#!/usr/bin/env bash
 
composer update -n
composer install -n
./bin/console doctrine:schema:create --no-interaction
./bin/console doc:fix:load --no-interaction
 
exec "$@"