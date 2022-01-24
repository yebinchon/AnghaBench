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
typedef  int /*<<< orphan*/  u16_t ;
struct tcp_pcb {int dummy; } ;
typedef  scalar_t__ err_t ;
struct TYPE_2__ {unsigned int http_payload_len; scalar_t__ http_payload_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERR_ABRT ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_pcb*) ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct tcp_pcb*) ; 
 scalar_t__ FUNC6 (struct tcp_pcb*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC7 (void *arg, struct tcp_pcb *pcb, u16_t len)
{
  FUNC0("streamout_sent");

  (void)len;
  unsigned offs = (unsigned)arg;

  if (!state || !state->http_payload_data)
  {
    FUNC2 (pcb);
    return ERR_ABRT;
  }

  unsigned wanted_len = state->http_payload_len - offs;
  unsigned buf_free = FUNC5 (pcb);
  if (buf_free < wanted_len)
    wanted_len = buf_free;

  /* no-copy write */
  err_t err = FUNC6 (pcb, state->http_payload_data + offs, wanted_len, 0);
  if (err != ERR_OK)
  {
    FUNC0("streaming out html failed");
    FUNC2 (pcb);
    return ERR_ABRT;
  }

  offs += wanted_len;

  if (offs >= state->http_payload_len)
  {
    FUNC4 (pcb, 0);
    FUNC1 (pcb);
  }
  else
    FUNC3 (pcb, (void *)offs);

  return ERR_OK;
}