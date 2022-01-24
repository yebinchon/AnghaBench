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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  JOINING_MODE_TIMER_STOP_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_ONE ; 
 int /*<<< orphan*/  LED_TWO ; 
 int /*<<< orphan*/  TCP_STATE_REQUEST_CONNECTION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_tcp_state ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
#ifdef COMMISSIONING_ENABLED
  commissioning_joining_mode_timer_ctrl(JOINING_MODE_TIMER_STOP_RESET);
#endif // COMMISSIONING_ENABLED

  FUNC0 ("[APPL]: IPv6 interface up.\r\n");

  FUNC4();

  m_tcp_state = TCP_STATE_REQUEST_CONNECTION;

  FUNC1(LED_ONE);
  FUNC2(LED_TWO);
}