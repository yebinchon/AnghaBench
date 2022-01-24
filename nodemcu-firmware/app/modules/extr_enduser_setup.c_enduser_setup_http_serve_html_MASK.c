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
typedef  scalar_t__ err_t ;
struct TYPE_2__ {int /*<<< orphan*/ * http_payload_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_NONFATAL ; 
 int /*<<< orphan*/  ENDUSER_SETUP_ERR_UNKOWN_ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  streamout_sent ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct tcp_pcb*) ; 
 scalar_t__ FUNC7 (struct tcp_pcb*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct tcp_pcb *http_client)
{
  FUNC0("enduser_setup_http_serve_html");

  if (state->http_payload_data == NULL)
  {
    FUNC2();
  }

  unsigned chunklen = FUNC6 (http_client);
  FUNC3 (http_client, (void *)chunklen);
  FUNC4 (http_client, 0); /* avoid confusion about the tcp_arg */
  FUNC5 (http_client, streamout_sent);
  /* Begin the no-copy stream-out here */
  err_t err = FUNC7 (http_client, state->http_payload_data, chunklen, 0);
  if (err != 0)
  {
    FUNC1("http_serve_html failed. tcp_write failed", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_NONFATAL);
  }

  return 0;
}