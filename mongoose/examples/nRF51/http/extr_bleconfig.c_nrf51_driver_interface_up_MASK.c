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
 int /*<<< orphan*/  CONNECTED_LED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LWIP_SYS_TIMER_INTERVAL ; 
 int /*<<< orphan*/  TCP_STATE_REQUEST_CONNECTION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  m_sys_timer_id ; 
 int /*<<< orphan*/  m_tcp_state ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
  uint32_t err_code;

  FUNC0 ("[APPL]: IPv6 interface up.\r\n");

  FUNC5();

  m_tcp_state = TCP_STATE_REQUEST_CONNECTION;

  err_code = FUNC4(m_sys_timer_id, LWIP_SYS_TIMER_INTERVAL, NULL);
  FUNC1(err_code);

  FUNC2(ADVERTISING_LED);
  FUNC3(CONNECTED_LED);
}