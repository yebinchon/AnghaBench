
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ CMD_BOOT_FW ;
 int FLASH_BLOCK_SIZE ;
 int FLASH_PAGE_SIZE ;
 int FLASH_SECTOR_SIZE ;
 int SET_PERI_REG_MASK (int,int) ;
 int SLIP_send (scalar_t__*,int) ;
 int SelectSpiFunction () ;
 int UART_FIFO_REG (int ) ;
 int WRITE_PERI_REG (int ,int) ;
 scalar_t__ cmd_loop () ;
 int esp_rom_spiflash_attach (int ,int ) ;
 int esp_rom_spiflash_config_param (int ,int,int ,int ,int ,int) ;
 int ets_delay_us (int) ;
 int ets_efuse_get_spiconfig () ;
 int ets_set_user_start (int ) ;
 scalar_t__* params ;
 scalar_t__ set_baud_rate (int ,scalar_t__,scalar_t__) ;
 int software_reset () ;
 int spi_flash_attach () ;

void stub_main1(void) {
  uint32_t old_baud_rate = params[0], new_baud_rate = params[1];
  uint8_t last_cmd;


  ets_set_user_start(0);
  esp_rom_spiflash_config_param(
      0 , 16 * 1024 * 1024 , FLASH_BLOCK_SIZE,
      FLASH_SECTOR_SIZE, FLASH_PAGE_SIZE, 0xffff );

  uint32_t old_div = 0;
  if (new_baud_rate > 0) {
    ets_delay_us(10000);
    old_div = set_baud_rate(0, old_baud_rate, new_baud_rate);
  }


  ets_delay_us(50000);






  SLIP_send(&old_div, 4);


  last_cmd = cmd_loop();

  ets_delay_us(10000);

  if (last_cmd == CMD_BOOT_FW) {
  } else {
    software_reset();
  }

}
