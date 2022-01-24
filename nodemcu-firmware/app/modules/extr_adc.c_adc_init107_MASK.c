#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  init_data ;

/* Variables and functions */
 scalar_t__ SPI_FLASH_RESULT_OK ; 
 int SPI_FLASH_SEC_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int*,int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int,int*,int) ; 
 char FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
  uint8_t byte107 = FUNC4 (L, 1);

  uint32 init_sector = FUNC2 () - 4;

  // Note 32bit alignment so we can safely cast to uint32 for the flash api
  char init_data[SPI_FLASH_SEC_SIZE] __attribute__((aligned(4)));

  if (SPI_FLASH_RESULT_OK != FUNC1 (
    init_sector * SPI_FLASH_SEC_SIZE,
    (uint32 *)init_data, sizeof(init_data)))
      return FUNC5(L, "flash read error");

  // If it's already the correct value, we don't need to force it
  if (init_data[107] == byte107)
  {
    FUNC6 (L, false);
    return 1;
  }

  // Nope, it differs, we need to rewrite it
  init_data[107] = byte107;
  if (SPI_FLASH_RESULT_OK != FUNC0 (init_sector))
    return FUNC5(L, "flash erase error");

  if (SPI_FLASH_RESULT_OK != FUNC3 (
    init_sector * SPI_FLASH_SEC_SIZE,
    (uint32 *)init_data, sizeof(init_data)))
      return FUNC5(L, "flash write error");

  FUNC6 (L, true);
  return 1;
}