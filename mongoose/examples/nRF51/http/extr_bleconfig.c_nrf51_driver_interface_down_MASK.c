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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISING_LED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DISPLAY_LED_0 ; 
 int DISPLAY_LED_1 ; 
 int DISPLAY_LED_2 ; 
 int DISPLAY_LED_3 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_sys_timer_id ; 
 int /*<<< orphan*/  m_tcp_state ; 

void FUNC5(void)
{
  uint32_t err_code;

  FUNC0 ("[APPL]: IPv6 interface down.\r\n");

  err_code = FUNC4(m_sys_timer_id);
  FUNC1(err_code);

  FUNC2((DISPLAY_LED_0 | DISPLAY_LED_1 | DISPLAY_LED_2 | DISPLAY_LED_3));
  FUNC3(ADVERTISING_LED);

  m_tcp_state = TCP_STATE_DISCONNECTED;
}