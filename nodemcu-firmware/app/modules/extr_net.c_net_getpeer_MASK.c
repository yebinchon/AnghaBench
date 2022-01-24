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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__* tcp_pcb; int /*<<< orphan*/  pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_3__ ip_addr_t ;
struct TYPE_5__ {scalar_t__ remote_port; TYPE_3__ remote_ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPSTR ; 
 scalar_t__ TYPE_TCP_CLIENT ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8( lua_State *L ) {
  lnet_userdata *ud = FUNC7(L);
  if (!ud || ud->type != TYPE_TCP_CLIENT)
    return FUNC3(L, "invalid user data");
  if (!ud->pcb) {
    FUNC5(L);
    FUNC5(L);
    return 2;
  }
  uint16_t port = ud->tcp_pcb->remote_port;
  ip_addr_t addr = ud->tcp_pcb->remote_ip;
  if (port == 0) {
    FUNC5(L);
    FUNC5(L);
    return 2;
  }
  char addr_str[16];
  FUNC1(addr_str, 16);
  FUNC2(addr_str, IPSTR, FUNC0(&addr.addr));
  FUNC4(L, port);
  FUNC6(L, addr_str);
  return 2;
}