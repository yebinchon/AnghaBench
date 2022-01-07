
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int lua_pushinteger (int *,int ) ;
 int vfs_fscfg (char*,int *,int *) ;

__attribute__((used)) static int file_fscfg (lua_State *L)
{
  uint32_t phys_addr, phys_size;

  vfs_fscfg("/FLASH", &phys_addr, &phys_size);

  lua_pushinteger (L, phys_addr);
  lua_pushinteger (L, phys_size);
  return 2;
}
