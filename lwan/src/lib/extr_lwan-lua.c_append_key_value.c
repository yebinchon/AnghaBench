
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_key_value_array {int dummy; } ;
struct lwan_key_value {char* key; int * value; } ;
struct coro {int dummy; } ;
typedef int lua_State ;


 int * coro_strdup (struct coro*,int ) ;
 int lua_tostring (int *,int) ;
 struct lwan_key_value* lwan_key_value_array_append (struct lwan_key_value_array*) ;

__attribute__((used)) static bool append_key_value(lua_State *L,
                             struct coro *coro,
                             struct lwan_key_value_array *arr,
                             char *key,
                             int value_index)
{
    struct lwan_key_value *kv;

    kv = lwan_key_value_array_append(arr);
    if (!kv)
        return 0;

    kv->key = key;
    kv->value = coro_strdup(coro, lua_tostring(L, value_index));

    return kv->value != ((void*)0);
}
