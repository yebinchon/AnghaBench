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
 int DISPLAY_LED_0 ; 
 int DISPLAY_LED_1 ; 
 int DISPLAY_LED_2 ; 
 int DISPLAY_LED_3 ; 
 int /*<<< orphan*/  JOINING_MODE_TIMER_START ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_ONE ; 
 int /*<<< orphan*/  TCP_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_tcp_state ; 

void FUNC4(void)
{
#ifdef COMMISSIONING_ENABLED
  commissioning_joining_mode_timer_ctrl(JOINING_MODE_TIMER_START);
#endif // COMMISSIONING_ENABLED

  FUNC0 ("[APPL]: IPv6 interface down.\r\n");

  FUNC1((DISPLAY_LED_0 | DISPLAY_LED_1 | DISPLAY_LED_2 | DISPLAY_LED_3));
  FUNC2(LED_ONE);

  m_tcp_state = TCP_STATE_DISCONNECTED;
}