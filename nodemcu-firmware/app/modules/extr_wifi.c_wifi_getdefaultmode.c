
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushinteger (int *,unsigned int) ;
 scalar_t__ wifi_get_opmode_default () ;

__attribute__((used)) static int wifi_getdefaultmode( lua_State* L )
{
  unsigned mode;
  mode = (unsigned)wifi_get_opmode_default();
  lua_pushinteger( L, mode );
  return 1;
}
