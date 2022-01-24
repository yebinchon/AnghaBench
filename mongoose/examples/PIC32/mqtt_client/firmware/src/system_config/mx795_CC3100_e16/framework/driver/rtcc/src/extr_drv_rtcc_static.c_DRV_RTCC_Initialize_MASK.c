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
 int /*<<< orphan*/  DEVCON_ID_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTCC_ALARM_EVERY_SECOND ; 
 int /*<<< orphan*/  RTCC_ID_0 ; 

void FUNC11(void) {
  FUNC0(DEVCON_ID_0); /* Unlock System */

  /* Initialize RTCC */
  FUNC10(RTCC_ID_0); /* Enable writes to RTCC */
  FUNC7(RTCC_ID_0);     /* Disable clock to RTCC */
  while (FUNC6(RTCC_ID_0))
    ;                                          /*Check if clock is disabled */
  FUNC9(RTCC_ID_0, 0x23595900); /* Set RTCC time */
  FUNC8(RTCC_ID_0, 0x14010100); /* Set RTCC date */
  FUNC2(RTCC_ID_0);           /* Disable alarm */
  while (FUNC4(RTCC_ID_0))
    ;                                            /* Wait for disable */
  FUNC5(RTCC_ID_0, 0x00000500); /* Set RTCC alarm time */
  FUNC1(RTCC_ID_0, 0x00010100); /* Set RTCC alarm date */
  FUNC3(
      RTCC_ID_0, RTCC_ALARM_EVERY_SECOND); /* Set RTCC alarm mode */
}