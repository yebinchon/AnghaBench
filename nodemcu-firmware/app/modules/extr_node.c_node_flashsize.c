
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int flash_rom_get_size_byte () ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int node_flashsize( lua_State* L )
{
  uint32_t sz = flash_rom_get_size_byte();
  lua_pushinteger( L, sz );
  return 1;
}
