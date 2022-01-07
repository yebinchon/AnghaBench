
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int dbg_printf (char*,int ) ;
 int luaL_error (int *,int ) ;
 int susp_note_str ;
 int susp_unavailable_str ;

__attribute__((used)) static int wifi_suspend(lua_State* L){
  dbg_printf("%s", susp_note_str);
  return luaL_error(L, susp_unavailable_str);
}
