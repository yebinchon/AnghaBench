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

/* Variables and functions */
 int /*<<< orphan*/  CONSOLE_BAUD_RATE ; 
 int /*<<< orphan*/  CONSOLE_UART ; 
 int /*<<< orphan*/  CONSOLE_UART_PERIPH ; 
 int /*<<< orphan*/  FAULT_SYSTICK ; 
 int /*<<< orphan*/  GPIOA1_BASE ; 
 int /*<<< orphan*/  GPIO_DIR_MODE_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I2C_MASTER_MODE_FST ; 
 int /*<<< orphan*/  LED1 ; 
 int /*<<< orphan*/  LL_ERROR ; 
 int /*<<< orphan*/  LL_INFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCU_RED_LED_GPIO ; 
 int /*<<< orphan*/  MGOS_TASK_PRIORITY ; 
 int /*<<< orphan*/  MG_TASK_STACK_SIZE ; 
 int /*<<< orphan*/  PIN_01 ; 
 int /*<<< orphan*/  PIN_02 ; 
 int /*<<< orphan*/  PIN_55 ; 
 int /*<<< orphan*/  PIN_57 ; 
 int /*<<< orphan*/  PIN_64 ; 
 int /*<<< orphan*/  PIN_MODE_0 ; 
 int /*<<< orphan*/  PIN_MODE_1 ; 
 int /*<<< orphan*/  PIN_MODE_3 ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  PRCM_GPIOA1 ; 
 int /*<<< orphan*/  PRCM_RUN_MODE_CLK ; 
 int UART_CONFIG_PAR_NONE ; 
 int UART_CONFIG_STOP_ONE ; 
 int UART_CONFIG_WLEN_8 ; 
 int /*<<< orphan*/  UART_FIFO_RX4_8 ; 
 int /*<<< orphan*/  UART_FIFO_TX1_8 ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_pfnVectors ; 
 int /*<<< orphan*/  mg_init ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC23(void) {
#ifndef USE_TIRTOS
  FUNC7((unsigned long) &g_pfnVectors[0]);
#endif
  FUNC5(FAULT_SYSTICK);
  FUNC6();
  FUNC16();

  /* Console UART init. */
  FUNC8(CONSOLE_UART_PERIPH, PRCM_RUN_MODE_CLK);
  FUNC12(PIN_55, PIN_MODE_3); /* PIN_55 -> UART0_TX */
  FUNC12(PIN_57, PIN_MODE_3); /* PIN_57 -> UART0_RX */
  FUNC13(
      CONSOLE_UART, FUNC9(CONSOLE_UART_PERIPH),
      CONSOLE_BAUD_RATE,
      (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));
  FUNC15(CONSOLE_UART, UART_FIFO_TX1_8, UART_FIFO_RX4_8);
  FUNC14(CONSOLE_UART);

  FUNC22(stdout, NULL, _IOLBF, 0);
  FUNC22(stderr, NULL, _IOLBF, 0);
  FUNC19(LL_INFO);
  FUNC18(stdout);

  FUNC3(LL_INFO, ("Hello, world!"));

  FUNC11(PIN_01, PIN_MODE_1); /* SDA */
  FUNC11(PIN_02, PIN_MODE_1); /* SCL */
  FUNC2(I2C_MASTER_MODE_FST);

  /* Set up the red LED. Note that amber and green cannot be used as they share
   * pins with I2C. */
  FUNC8(PRCM_GPIOA1, PRCM_RUN_MODE_CLK);
  FUNC10(PIN_64, PIN_MODE_0, false);
  FUNC4(GPIOA1_BASE, 0x2, GPIO_DIR_MODE_OUT);
  FUNC0(LED1);
  FUNC1(MCU_RED_LED_GPIO);

  if (FUNC17(8) != 0) {
    FUNC3(LL_ERROR, ("Failed to create SL task"));
  }

  if (!FUNC20(MGOS_TASK_PRIORITY, MG_TASK_STACK_SIZE, mg_init)) {
    FUNC3(LL_ERROR, ("Failed to create MG task"));
  }

  FUNC21();

  return 0;
}