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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  BIT2 ; 
 int /*<<< orphan*/  FUNC_U1TXD_BK ; 
 int /*<<< orphan*/  GPIO_ENABLE_W1TC_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const MODE_DUAL ; 
 int const MODE_SINGLE ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_GPIO2_U ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_GPIO_FLOAT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_OUTPUT ; 
 int UART_BIT_NUM_S ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int UART_CLK_FREQ ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int UART_STOP_BIT_NUM_S ; 
 int UART_TXD_INV ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int const) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(lua_State* L) {
  const int mode = FUNC6(L, 1, MODE_SINGLE);
  FUNC5(L, mode == MODE_SINGLE || mode == MODE_DUAL, 1, "ws2812.SINGLE or ws2812.DUAL expected");

  // Configure UART1
  // Set baudrate of UART1 to 3200000
  FUNC4(FUNC2(1), UART_CLK_FREQ / 3200000);
  // Set UART Configuration No parity / 6 DataBits / 1 StopBits / Invert TX
  FUNC4(FUNC3(1), UART_TXD_INV | (1 << UART_STOP_BIT_NUM_S) | (1 << UART_BIT_NUM_S));

  if (mode == MODE_DUAL) {
    // Configure UART0
    // Set baudrate of UART0 to 3200000
    FUNC4(FUNC2(0), UART_CLK_FREQ / 3200000);
    // Set UART Configuration No parity / 6 DataBits / 1 StopBits / Invert TX
    FUNC4(FUNC3(0), UART_TXD_INV | (1 << UART_STOP_BIT_NUM_S) | (1 << UART_BIT_NUM_S));
  }

  // Pull GPIO2 down
  FUNC8(4, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT);
  FUNC9(4, 0);

  // Waits 10us to simulate a reset
  FUNC7(10);

  // Redirect UART1 to GPIO2
  // Disable GPIO2
  FUNC0(GPIO_ENABLE_W1TC_ADDRESS, BIT2);
  // Enable Function 2 for GPIO2 (U1TXD)
  FUNC1(PERIPHS_IO_MUX_GPIO2_U, FUNC_U1TXD_BK);

  return 0;
}