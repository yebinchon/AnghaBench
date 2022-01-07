
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cc; scalar_t__ policy; scalar_t__ nchan; scalar_t__ schan; int member_0; } ;
typedef TYPE_1__ wifi_country_t ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_newtable (int *) ;
 int lua_pushnumber (int *,scalar_t__) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawset (int *,int) ;
 scalar_t__ wifi_get_country (TYPE_1__*) ;

__attribute__((used)) static int wifi_getcountry( lua_State* L ){

  wifi_country_t cfg = {0};


  if(wifi_get_country(&cfg)){
    lua_newtable(L);

    lua_pushstring(L, "country");
    lua_pushstring(L, cfg.cc);
    lua_rawset(L, -3);

    lua_pushstring(L, "start_ch");
    lua_pushnumber(L, cfg.schan);
    lua_rawset(L, -3);

    lua_pushstring(L, "end_ch");
    lua_pushnumber(L, (cfg.schan + cfg.nchan)-1);
    lua_rawset(L, -3);

    lua_pushstring(L, "policy");
    lua_pushnumber(L, cfg.policy);
    lua_rawset(L, -3);

    return 1;
  }
  else{
    return luaL_error(L, "Unable to get country info");
  }
}
