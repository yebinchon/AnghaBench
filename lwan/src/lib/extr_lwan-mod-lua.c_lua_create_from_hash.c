
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_lua_settings {int script; int cache_period; int script_file; int default_type; } ;
struct hash {int dummy; } ;


 int hash_find (struct hash const*,char*) ;
 void* lua_create (char const*,struct lwan_lua_settings*) ;
 int parse_time_period (int ,int) ;

__attribute__((used)) static void *lua_create_from_hash(const char *prefix, const struct hash *hash)
{
    struct lwan_lua_settings settings = {
        .default_type = hash_find(hash, "default_type"),
        .script_file = hash_find(hash, "script_file"),
        .cache_period = parse_time_period(hash_find(hash, "cache_period"), 15),
        .script = hash_find(hash, "script")
    };

    return lua_create(prefix, &settings);
}
