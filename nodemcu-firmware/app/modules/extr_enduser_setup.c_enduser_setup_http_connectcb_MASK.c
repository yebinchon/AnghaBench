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
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_2__ {int /*<<< orphan*/  http_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_ABRT ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  enduser_setup_http_recvcb ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC5(void *arg, struct tcp_pcb *pcb, err_t err)
{
  FUNC0("enduser_setup_http_connectcb");

  if (!state)
  {
    FUNC0("connect callback but no state?!");
    FUNC1 (pcb);
    return ERR_ABRT;
  }

  FUNC2 (state->http_pcb);
  FUNC4 (pcb, enduser_setup_http_recvcb);
  FUNC3 (pcb);
  return ERR_OK;
}