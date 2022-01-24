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
struct tcp_pcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTED_LED ; 
 int DISPLAY_LED_0 ; 
 int DISPLAY_LED_1 ; 
 int DISPLAY_LED_2 ; 
 int DISPLAY_LED_3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_STATE_REQUEST_CONNECTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_tcp_state ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_pcb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_pcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_pcb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_pcb*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct tcp_pcb * p_pcb)
{
  m_tcp_state = TCP_STATE_REQUEST_CONNECTION;

  //Reset all information set on and/or callback registered for the  port.
  FUNC3(p_pcb, NULL);
  FUNC8(p_pcb, NULL);
  FUNC7(p_pcb, NULL);
  FUNC5(p_pcb, NULL);
  FUNC6(p_pcb, NULL, 0);

  FUNC2(FUNC4(p_pcb));

  FUNC0((DISPLAY_LED_0 | DISPLAY_LED_1 | DISPLAY_LED_2 | DISPLAY_LED_3));
  FUNC1(CONNECTED_LED);
}