
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lua_State {int dummy; } ;
struct MasscanWrapper {struct Masscan* masscan; } ;
struct TYPE_4__ {struct lua_State* L; } ;
struct Masscan {TYPE_1__ scripting; } ;
struct TYPE_5__ {char* member_0; int * member_1; } ;
typedef TYPE_2__ luaL_Reg ;


 int MASSCAN_CLASS ;
 int luaL_newmetatable (struct lua_State*,int ) ;
 int luaL_setfuncs (struct lua_State*,TYPE_2__ const*,int ) ;
 int luaL_setmetatable (struct lua_State*,int ) ;
 struct MasscanWrapper* lua_newuserdata (struct lua_State*,int) ;
 int lua_pop (struct lua_State*,int) ;
 int lua_pushvalue (struct lua_State*,int) ;
 int lua_setfield (struct lua_State*,int,char*) ;
 int lua_setglobal (struct lua_State*,char*) ;


 int memset (struct MasscanWrapper*,int ,int) ;

void scripting_masscan_init(struct Masscan *masscan)
{
    struct MasscanWrapper *wrapper;
    struct lua_State *L = masscan->scripting.L;

    static const luaL_Reg my_methods[] = {
        {"setconfig", 128},
        {"__gc", 129},
        {((void*)0), ((void*)0)}
    };





    luaL_newmetatable(L, MASSCAN_CLASS);
    lua_pushvalue(L, -1);
    lua_setfield(L, -2, "__index");
    luaL_setfuncs(L, my_methods, 0);
    lua_pop(L, 1);


    wrapper = lua_newuserdata(L, sizeof(*wrapper));
    memset(wrapper, 0, sizeof(*wrapper));
    wrapper->masscan = masscan;


    luaL_setmetatable(L, MASSCAN_CLASS);

    lua_setglobal(L, "Masscan");

}
