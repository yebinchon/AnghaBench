
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct lwan_request lwan_request ;
typedef int lua_State ;


 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 char* lua_tostring (int *,int) ;
 struct lwan_request* lwan_lua_get_request_from_userdata (int *) ;

__attribute__((used)) static int request_param_getter(lua_State *L,
                                const char *(*getter)(struct lwan_request *req,
                                                      const char *key))
{
    struct lwan_request *request = lwan_lua_get_request_from_userdata(L);
    const char *key_str = lua_tostring(L, -1);

    const char *value = getter(request, key_str);
    if (!value)
        lua_pushnil(L);
    else
        lua_pushstring(L, value);

    return 1;
}
