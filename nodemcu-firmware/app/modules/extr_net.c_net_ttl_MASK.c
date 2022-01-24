#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__* udp_pcb; int /*<<< orphan*/  pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
struct TYPE_4__ {int ttl; } ;

/* Variables and functions */
 scalar_t__ TYPE_TCP_SERVER ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4( lua_State *L ) {
  lnet_userdata *ud = FUNC3(L);
  if (!ud || ud->type == TYPE_TCP_SERVER)
    return FUNC0(L, "invalid user data");
  if (!ud->pcb)
    return FUNC0(L, "socket is not open/bound yet");
  int ttl = FUNC1(L, 2, -1);
  // Since `ttl` field is part of IP_PCB macro
  // (which are at beginning of both udp_pcb/tcp_pcb)
  // and PCBs declared as `union` there is safe to
  // access ttl field without checking for type.
  if (ttl == -1) {
    ttl = ud->udp_pcb->ttl;
  } else {
    ud->udp_pcb->ttl = ttl;
  }
  FUNC2(L, ttl);
  return 1;
}