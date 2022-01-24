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
typedef  int /*<<< orphan*/  value ;
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  CMD_BOOT_FW 137 
#define  CMD_ECHO 136 
#define  CMD_FLASH_DIGEST 135 
#define  CMD_FLASH_ERASE_CHIP 134 
#define  CMD_FLASH_READ 133 
#define  CMD_FLASH_READ_CHIP_ID 132 
#define  CMD_FLASH_WRITE 131 
#define  CMD_READ_REG 130 
#define  CMD_REBOOT 129 
#define  CMD_WRITE_REG 128 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_RXFIFO_RST ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int FUNC7 (int,int,int) ; 
 int FUNC8 (int,int,int,int) ; 
 int FUNC9 () ; 
 int FUNC10 (int,int,int) ; 
 int FUNC11 () ; 

uint8_t FUNC12(void) {
  uint8_t cmd = 0x55;
  do {
    /* Reset FIFO to re-sync */
    FUNC2(FUNC5(0), UART_RXFIFO_RST);
    FUNC0(FUNC5(0), UART_RXFIFO_RST);
    uint32_t args[4];
    uint32_t len = FUNC3(&cmd, 1);
    if (len != 1) {
      continue;
    }
    uint8_t resp = 0xff;
    switch (cmd) {
      case CMD_FLASH_WRITE: {
        len = FUNC3(args, sizeof(args));
        if (len == 12) {
          resp = FUNC10(args[0] /* addr */, args[1] /* len */,
                                args[2] /* erase */);
        } else {
          resp = 0x41;
        }
        break;
      }
      case CMD_FLASH_READ: {
        len = FUNC3(args, sizeof(args));
        if (len == 16) {
          resp = FUNC8(args[0] /* addr */, args[1], /* len */
                               args[2] /* block_size */,
                               args[3] /* max_in_flight */);
        } else {
          resp = 0x51;
        }
        break;
      }
      case CMD_FLASH_DIGEST: {
        len = FUNC3(args, sizeof(args));
        if (len == 12) {
          resp = FUNC7(args[0] /* addr */, args[1], /* len */
                                 args[2] /* digest_block_size */);
        } else {
          resp = 0x61;
        }
        break;
      }
      case CMD_FLASH_READ_CHIP_ID: {
        resp = FUNC9();
        break;
      }
      case CMD_FLASH_ERASE_CHIP: {
        resp = FUNC11();
        break;
      }
      case CMD_BOOT_FW:
      case CMD_REBOOT: {
        resp = 0;
        FUNC4(&resp, 1);
        return cmd;
      }
      case CMD_ECHO: {
        len = FUNC3(args, sizeof(args));
        FUNC4(args, len);
        resp = 0;
        break;
      }
      case CMD_READ_REG: {
        len = FUNC3(args, sizeof(args));
        if (len == 4) {
          uint32_t value = FUNC1((uint32_t *) args[0]);
          FUNC4(&value, sizeof(value));
          resp = 0;
        } else {
          resp = 0x91;
        }
        break;
      }
      case CMD_WRITE_REG: {
        len = FUNC3(args, sizeof(args));
        if (len == 8) {
          FUNC6((uint32_t *) args[0], args[1]);
          resp = 0;
        } else {
          resp = 0xa1;
        }
        break;
      }
    }
    FUNC4(&resp, 1);
  } while (cmd != CMD_BOOT_FW && cmd != CMD_REBOOT);
  return cmd;
}