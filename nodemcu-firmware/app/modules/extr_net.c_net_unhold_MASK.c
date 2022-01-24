#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {scalar_t__ hold; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_3__* tcp_pcb; TYPE_1__ client; } ;
typedef  TYPE_2__ lnet_userdata ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_WND ; 
 int /*<<< orphan*/  TF_ACK_NOW ; 
 scalar_t__ TYPE_TCP_CLIENT ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int FUNC3( lua_State *L ) {
  lnet_userdata *ud = FUNC1(L);
  if (!ud || ud->type != TYPE_TCP_CLIENT)
    return FUNC0(L, "invalid user data");
  if (ud->client.hold && ud->tcp_pcb) {
	ud->client.hold = 0;
	ud->tcp_pcb->flags |= TF_ACK_NOW;
    FUNC2(ud->tcp_pcb, TCP_WND);
  }
  return 0;
}