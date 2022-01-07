
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int args ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int READ_PERI_REG (int*) ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int SLIP_recv (int*,int) ;
 int SLIP_send (int*,int) ;
 int UART_CONF0_REG (int ) ;
 int UART_RXFIFO_RST ;
 int WRITE_PERI_REG (int*,int) ;
 int do_flash_digest (int,int,int) ;
 int do_flash_read (int,int,int,int) ;
 int do_flash_read_chip_id () ;
 int do_flash_write (int,int,int) ;
 int esp_rom_spiflash_erase_chip () ;

uint8_t cmd_loop(void) {
  uint8_t cmd = 0x55;
  do {

    SET_PERI_REG_MASK(UART_CONF0_REG(0), UART_RXFIFO_RST);
    CLEAR_PERI_REG_MASK(UART_CONF0_REG(0), UART_RXFIFO_RST);
    uint32_t args[4];
    uint32_t len = SLIP_recv(&cmd, 1);
    if (len != 1) {
      continue;
    }
    uint8_t resp = 0xff;
    switch (cmd) {
      case 131: {
        len = SLIP_recv(args, sizeof(args));
        if (len == 12) {
          resp = do_flash_write(args[0] , args[1] ,
                                args[2] );
        } else {
          resp = 0x41;
        }
        break;
      }
      case 133: {
        len = SLIP_recv(args, sizeof(args));
        if (len == 16) {
          resp = do_flash_read(args[0] , args[1],
                               args[2] ,
                               args[3] );
        } else {
          resp = 0x51;
        }
        break;
      }
      case 135: {
        len = SLIP_recv(args, sizeof(args));
        if (len == 12) {
          resp = do_flash_digest(args[0] , args[1],
                                 args[2] );
        } else {
          resp = 0x61;
        }
        break;
      }
      case 132: {
        resp = do_flash_read_chip_id();
        break;
      }
      case 134: {
        resp = esp_rom_spiflash_erase_chip();
        break;
      }
      case 137:
      case 129: {
        resp = 0;
        SLIP_send(&resp, 1);
        return cmd;
      }
      case 136: {
        len = SLIP_recv(args, sizeof(args));
        SLIP_send(args, len);
        resp = 0;
        break;
      }
      case 130: {
        len = SLIP_recv(args, sizeof(args));
        if (len == 4) {
          uint32_t value = READ_PERI_REG((uint32_t *) args[0]);
          SLIP_send(&value, sizeof(value));
          resp = 0;
        } else {
          resp = 0x91;
        }
        break;
      }
      case 128: {
        len = SLIP_recv(args, sizeof(args));
        if (len == 8) {
          WRITE_PERI_REG((uint32_t *) args[0], args[1]);
          resp = 0;
        } else {
          resp = 0xa1;
        }
        break;
      }
    }
    SLIP_send(&resp, 1);
  } while (cmd != 137 && cmd != 129);
  return cmd;
}
