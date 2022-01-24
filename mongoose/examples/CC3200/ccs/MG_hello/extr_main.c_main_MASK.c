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
 int /*<<< orphan*/  FAULT_SYSTICK ; 
 int /*<<< orphan*/  GPIOA1_BASE ; 
 int /*<<< orphan*/  GPIO_DIR_MODE_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED1 ; 
 int /*<<< orphan*/  LL_ERROR ; 
 int /*<<< orphan*/  LL_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MCU_RED_LED_GPIO ; 
 int /*<<< orphan*/  MGOS_TASK_PRIORITY ; 
 int /*<<< orphan*/  MG_TASK_STACK_SIZE ; 
 int /*<<< orphan*/  PIN_64 ; 
 int /*<<< orphan*/  PIN_MODE_0 ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  PRCM_GPIOA1 ; 
 int /*<<< orphan*/  PRCM_RUN_MODE_CLK ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_pfnVectors ; 
 int /*<<< orphan*/  mg_init ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC16(void) {
#ifndef USE_TIRTOS
  FUNC6((unsigned long) &g_pfnVectors[0]);
#endif
  FUNC4(FAULT_SYSTICK);
  FUNC5();
  FUNC9();

  FUNC15(stdout, NULL, _IOLBF, 0);
  FUNC15(stderr, NULL, _IOLBF, 0);
  FUNC12(LL_INFO);
  FUNC11(stdout);

  FUNC2(LL_INFO, ("Hello, world!"));

  /* Set up the red LED. Note that amber and green cannot be used as they share
   * pins with I2C. */
  FUNC7(PRCM_GPIOA1, PRCM_RUN_MODE_CLK);
  FUNC8(PIN_64, PIN_MODE_0, false);
  FUNC3(GPIOA1_BASE, 0x2, GPIO_DIR_MODE_OUT);
  FUNC0(LED1);
  FUNC1(MCU_RED_LED_GPIO);

  if (FUNC10(8) != 0) {
    FUNC2(LL_ERROR, ("Failed to create SL task"));
  }

  if (!FUNC13(MGOS_TASK_PRIORITY, MG_TASK_STACK_SIZE, mg_init)) {
    FUNC2(LL_ERROR, ("Failed to create MG task"));
  }

  FUNC14();

  return 0;
}