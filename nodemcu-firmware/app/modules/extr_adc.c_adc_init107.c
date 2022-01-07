
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32 ;
typedef int lua_State ;
typedef int init_data ;


 scalar_t__ SPI_FLASH_RESULT_OK ;
 int SPI_FLASH_SEC_SIZE ;
 scalar_t__ flash_erase (int) ;
 scalar_t__ flash_read (int,int*,int) ;
 int flash_rom_get_sec_num () ;
 scalar_t__ flash_write (int,int*,int) ;
 char luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int adc_init107( lua_State *L )
{
  uint8_t byte107 = luaL_checkinteger (L, 1);

  uint32 init_sector = flash_rom_get_sec_num () - 4;


  char init_data[SPI_FLASH_SEC_SIZE] __attribute__((aligned(4)));

  if (SPI_FLASH_RESULT_OK != flash_read (
    init_sector * SPI_FLASH_SEC_SIZE,
    (uint32 *)init_data, sizeof(init_data)))
      return luaL_error(L, "flash read error");


  if (init_data[107] == byte107)
  {
    lua_pushboolean (L, 0);
    return 1;
  }


  init_data[107] = byte107;
  if (SPI_FLASH_RESULT_OK != flash_erase (init_sector))
    return luaL_error(L, "flash erase error");

  if (SPI_FLASH_RESULT_OK != flash_write (
    init_sector * SPI_FLASH_SEC_SIZE,
    (uint32 *)init_data, sizeof(init_data)))
      return luaL_error(L, "flash write error");

  lua_pushboolean (L, 1);
  return 1;
}
