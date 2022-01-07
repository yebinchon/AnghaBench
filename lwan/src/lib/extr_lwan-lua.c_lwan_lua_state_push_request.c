
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_request {int dummy; } ;
typedef int lua_State ;


 int luaL_getmetatable (int *,int ) ;
 struct lwan_request** lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int request_metatable_name ;

void lwan_lua_state_push_request(lua_State *L, struct lwan_request *request)
{
    struct lwan_request **userdata =
        lua_newuserdata(L, sizeof(struct lwan_request *));

    *userdata = request;
    luaL_getmetatable(L, request_metatable_name);
    lua_setmetatable(L, -2);
}
