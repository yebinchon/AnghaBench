#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcp_pcb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  espconn_http_tcp; int /*<<< orphan*/  http_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_CONNECTION_NOT_FOUND ; 
 int ENDUSER_SETUP_ERR_FATAL ; 
 int ENDUSER_SETUP_ERR_NONFATAL ; 
 int ENDUSER_SETUP_ERR_NO_RETURN ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  ESPCONN_ARG ; 
 int /*<<< orphan*/  IP_ADDR_ANY ; 
 int /*<<< orphan*/  enduser_setup_http_connectcb ; 
 int FUNC2 () ; 
 int err ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct tcp_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_pcb*) ; 
 struct tcp_pcb* FUNC8 () ; 

__attribute__((used)) static int FUNC9(void)
{
  FUNC0("enduser_setup_http_start");
  struct tcp_pcb *pcb = FUNC8 ();
  if (pcb == NULL)
  {
    FUNC1("http_start failed. Memory allocation failed (http_pcb == NULL).", ENDUSER_SETUP_ERR_OUT_OF_MEMORY, ENDUSER_SETUP_ERR_FATAL);
  }

  if (FUNC6 (pcb, IP_ADDR_ANY, 80) != ERR_OK)
  {
    FUNC1("http_start bind failed", ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN, ENDUSER_SETUP_ERR_FATAL);
  }

  state->http_pcb = FUNC7 (pcb);
  if (!state->http_pcb)
  {
    FUNC4(pcb); /* original wasn't freed for us */
    FUNC1("http_start listen failed", ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN, ENDUSER_SETUP_ERR_FATAL);
  }

  FUNC5 (state->http_pcb, enduser_setup_http_connectcb);

  /* TODO: check lwip tcp timeouts */
#if 0
  err = espconn_regist_time(state->espconn_http_tcp, 2, 0);
  if (err == ESPCONN_ARG)
  {
    ENDUSER_SETUP_ERROR("http_start failed. Unable to set TCP timeout.", ENDUSER_SETUP_ERR_CONNECTION_NOT_FOUND, ENDUSER_SETUP_ERR_NONFATAL | ENDUSER_SETUP_ERR_NO_RETURN);
  }
#endif

  int err = FUNC2();
  if (err == 1)
  {
    FUNC0("enduser_setup_http_start info. Loaded default HTML.");
  }
  else if (err == 2)
  {
    FUNC1("http_start failed. Unable to allocate memory for HTTP payload.", ENDUSER_SETUP_ERR_OUT_OF_MEMORY, ENDUSER_SETUP_ERR_FATAL);
  }

  return 0;
}