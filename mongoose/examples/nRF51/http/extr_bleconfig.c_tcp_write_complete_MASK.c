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
typedef  scalar_t__ u16_t ;
typedef  void tcp_pcb ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  TCP_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  m_tcp_state ; 
 int /*<<< orphan*/  mp_tcp_port ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC2(void           * p_arg,
    struct tcp_pcb * p_pcb,
    u16_t            len)
{
  FUNC0(p_arg);
  FUNC0(p_pcb);

  if (len != 0)
  {
    //Write complete, reset the state to connected from transmit pending.
    m_tcp_state = TCP_STATE_CONNECTED;
  }
  else
  {
    //Something is not right on the port, close the port.
    FUNC1(mp_tcp_port);
  }
  return ERR_OK;
}