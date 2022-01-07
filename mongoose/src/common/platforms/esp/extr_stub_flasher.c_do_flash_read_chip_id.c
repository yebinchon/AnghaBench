
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int chip_id ;


 int READ_PERI_REG (int ) ;
 int SPI_CMD_REG (int ) ;
 int SPI_FLASH_RDID ;
 int SPI_W0_REG (int ) ;
 int WRITE_PERI_REG (int ,int) ;
 int send_packet (int *,int) ;

int do_flash_read_chip_id(void) {
  uint32_t chip_id = 0;
  WRITE_PERI_REG(SPI_CMD_REG(0), SPI_FLASH_RDID);
  while (READ_PERI_REG(SPI_CMD_REG(0)) & SPI_FLASH_RDID) {
  }
  chip_id = READ_PERI_REG(SPI_W0_REG(0)) & 0xFFFFFF;
  send_packet((uint8_t *) &chip_id, sizeof(chip_id));
  return 0;
}
