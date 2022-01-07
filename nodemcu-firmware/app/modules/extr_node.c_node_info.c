
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int BUILDINFO_BRANCH ;
 int BUILDINFO_BUILD_TYPE ;
 int BUILDINFO_COMMIT_ID ;
 int BUILDINFO_LFS ;
 int BUILDINFO_MODULES ;
 int BUILDINFO_RELEASE ;
 int BUILDINFO_RELEASE_DTS ;
 int BUILDINFO_SSL ;
 int NODE_VERSION_MAJOR ;
 int NODE_VERSION_MINOR ;
 int NODE_VERSION_REVISION ;
 int flash_rom_get_mode () ;
 int flash_rom_get_size_byte () ;
 int flash_rom_get_speed () ;
 int luaL_checkoption (int *,int,char const*,char const**) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int platform_print_deprecation_note (char*,char*) ;
 int spi_flash_get_id () ;
 int system_get_chip_id () ;

__attribute__((used)) static int node_info( lua_State* L )
{
  const char* options[] = {"hw", "sw_version", "build_config", "legacy", ((void*)0)};
  int option = luaL_checkoption (L, 1, options[3], options);

  switch (option) {
    case 0: {
      lua_createtable (L, 0, 5);
      int table_index = lua_gettop(L);
      lua_pushinteger(L, system_get_chip_id());
      lua_setfield(L, table_index, "chip_id");
      lua_pushinteger(L, spi_flash_get_id());
      lua_setfield(L, table_index, "flash_id");
      lua_pushinteger(L, flash_rom_get_size_byte() / 1024);
      lua_setfield(L, table_index, "flash_size");
      lua_pushinteger(L, flash_rom_get_mode());
      lua_setfield(L, table_index, "flash_mode");
      lua_pushinteger(L, flash_rom_get_speed());
      lua_setfield(L, table_index, "flash_speed");
      return 1;
    }
    case 1: {
      lua_createtable (L, 0, 7);
      int table_index = lua_gettop(L);
      lua_pushinteger(L, NODE_VERSION_MAJOR);
      lua_setfield(L, table_index, "node_version_major");
      lua_pushinteger(L, NODE_VERSION_MINOR);
      lua_setfield(L, table_index, "node_version_minor");
      lua_pushinteger(L, NODE_VERSION_REVISION);
      lua_setfield(L, table_index, "node_version_revision");
      lua_pushstring(L, BUILDINFO_BRANCH);
      lua_setfield(L, table_index, "git_branch");
      lua_pushstring(L, BUILDINFO_COMMIT_ID);
      lua_setfield(L, table_index, "git_commit_id");
      lua_pushstring(L, BUILDINFO_RELEASE);
      lua_setfield(L, table_index, "git_release");
      lua_pushstring(L, BUILDINFO_RELEASE_DTS);
      lua_setfield(L, table_index, "git_commit_dts");
      return 1;
    }
    case 2: {
      lua_createtable (L, 0, 4);
      int table_index = lua_gettop(L);
      lua_pushboolean(L, BUILDINFO_SSL);
      lua_setfield(L, table_index, "ssl");
      lua_pushnumber(L, BUILDINFO_LFS);
      lua_setfield(L, table_index, "lfs_size");
      lua_pushstring(L, BUILDINFO_MODULES);
      lua_setfield(L, table_index, "modules");
      lua_pushstring(L, BUILDINFO_BUILD_TYPE);
      lua_setfield(L, table_index, "number_type");
      return 1;
    }
    default:
    {
      platform_print_deprecation_note("node.info() without parameter", "in the next version");
      lua_pushinteger(L, NODE_VERSION_MAJOR);
      lua_pushinteger(L, NODE_VERSION_MINOR);
      lua_pushinteger(L, NODE_VERSION_REVISION);
      lua_pushinteger(L, system_get_chip_id());
      lua_pushinteger(L, spi_flash_get_id());
      lua_pushinteger(L, flash_rom_get_size_byte() / 1024);
      lua_pushinteger(L, flash_rom_get_mode());
      lua_pushinteger(L, flash_rom_get_speed());
      return 8;
    }
  }
}
