#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int baud_rate; } ;

/* Variables and functions */
 int ETS_UART_INUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _c_0x3fffdb2c_uart_int_handler_arg ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_int_handler ; 
 TYPE_1__ uartdev ; 

void FUNC2(void) {
  // zero uartdev
  uartdev.baud_rate = 115200;
  FUNC0(1 << ETS_UART_INUM);
  // INTR_MAP_REG_C
  // 11111111 11111111 11111100 00011111 &
  // 00000000 00000000 00000000 10100000 |
  // PRODPORT_INTR_MAP_13 -> 5 = ETS_UART_INUM
  // 11111111 11111111 10000011 11111111 &
  // 00000000 00000000 00010100 11111111 |
  // PRODPORT_INTR_MAP_14 -> 5 = ETS_UART_INUM
  FUNC1(ETS_UART_INUM, uart_int_handler, _c_0x3fffdb2c_uart_int_handler_arg);
}