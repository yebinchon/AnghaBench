
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_format ;
typedef int lua_State ;


 int MPV_FORMAT_DOUBLE ;
 int MPV_FORMAT_FLAG ;
 int MPV_FORMAT_NODE ;
 int MPV_FORMAT_NONE ;
 int MPV_FORMAT_STRING ;
 int abort () ;
 int luaL_checkoption (int *,int,char*,char const**) ;
 scalar_t__ lua_isnil (int *,int) ;

__attribute__((used)) static mpv_format check_property_format(lua_State *L, int arg)
{
    if (lua_isnil(L, arg))
        return MPV_FORMAT_NONE;
    const char *fmts[] = {"none", "native", "bool", "string", "number", ((void*)0)};
    switch (luaL_checkoption(L, arg, "none", fmts)) {
    case 0: return MPV_FORMAT_NONE;
    case 1: return MPV_FORMAT_NODE;
    case 2: return MPV_FORMAT_FLAG;
    case 3: return MPV_FORMAT_STRING;
    case 4: return MPV_FORMAT_DOUBLE;
    }
    abort();
}
