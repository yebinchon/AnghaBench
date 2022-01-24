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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ CMD_BOOT_FW ; 
 int /*<<< orphan*/  FLASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  FLASH_PAGE_SIZE ; 
 int /*<<< orphan*/  FLASH_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__* params ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14(void) {
  uint32_t old_baud_rate = params[0], new_baud_rate = params[1];
  uint8_t last_cmd;

  /* This points at us right now, reset for next boot. */
  FUNC10(0);

/* Selects SPI functions for flash pins. */
#if defined(ESP8266)
  SelectSpiFunction();
  spi_flash_attach();
  SET_PERI_REG_MASK(0x3FF00014, 1); /* Switch to 160 MHz */
#elif defined(ESP32)
  esp_rom_spiflash_attach(ets_efuse_get_spiconfig(), 0 /* legacy */);
#endif

  FUNC7(
      0 /* deviceId */, 16 * 1024 * 1024 /* chip_size */, FLASH_BLOCK_SIZE,
      FLASH_SECTOR_SIZE, FLASH_PAGE_SIZE, 0xffff /* status_mask */);

  uint32_t old_div = 0;
  if (new_baud_rate > 0) {
    FUNC8(10000);
    old_div = FUNC11(0, old_baud_rate, new_baud_rate);
  }

  /* Give host time to get ready too. */
  FUNC8(50000);

#ifdef BAUD_TEST
  while (1) {
    WRITE_PERI_REG(UART_FIFO_REG(0), 0x55);
  }
#else
  FUNC1(&old_div, 4);
#endif

  last_cmd = FUNC5();

  FUNC8(10000);

  if (last_cmd == CMD_BOOT_FW) {
#if defined(ESP8266)
    /*
     * Find the return address in our own stack and change it.
     * "flash_finish" it gets to the same point, except it doesn't need to
     * patch up its RA: it returns from UartDwnLdProc, then from f_400011ac,
     * then jumps to 0x4000108a, then checks strapping bits again (which will
     * not have changed), and then proceeds to 0x400010a8.
     */
    volatile uint32_t *sp = &old_baud_rate;
    while (*sp != (uint32_t) 0x40001100) sp++;
    *sp = 0x400010a8;
    /*
     * The following dummy asm fragment acts as a barrier, to make sure function
     * epilogue, including return address loading, is added after our stack
     * patching.
     */
    __asm volatile("nop.n");
    return; /* To 0x400010a8 */
#elif defined(ESP32)
/* TODO(rojer) */
#endif
  } else {
    FUNC12();
  }
  /* Not reached */
}