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
struct tcp_pcb {int dummy; } ;
struct pbuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ hold; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ self_ref; TYPE_1__ client; int /*<<< orphan*/  pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ABRT ; 
 int /*<<< orphan*/  ERR_OK ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  TCP_WND ; 
 scalar_t__ TYPE_TCP_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC4(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err) {
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud || !ud->pcb || ud->type != TYPE_TCP_CLIENT || ud->self_ref == LUA_NOREF)
    return ERR_ABRT;
  if (!p) {
    FUNC0(arg, err);
    return FUNC2(tpcb);
  }
  FUNC1(ud, p, 0, 0);
  FUNC3(tpcb, ud->client.hold ? 0 : TCP_WND);
  return ERR_OK;
}