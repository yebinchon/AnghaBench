#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mg_dns_message {int num_answers; TYPE_3__* answers; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_5__ {TYPE_1__ sin; } ;
struct mg_connection {int flags; int /*<<< orphan*/  user_data; TYPE_2__ sa; } ;
typedef  enum mg_resolve_err { ____Placeholder_mg_resolve_err } mg_resolve_err ;
struct TYPE_6__ {scalar_t__ rtype; } ;

/* Variables and functions */
 scalar_t__ MG_DNS_A_RECORD ; 
 int /*<<< orphan*/  MG_EV_CLOSE ; 
 int /*<<< orphan*/  MG_EV_CONNECT ; 
 int /*<<< orphan*/  MG_EV_TIMER ; 
 int MG_F_RESOLVING ; 
 int MG_F_UDP ; 
 int MG_RESOLVE_TIMEOUT ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_dns_message*,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 double FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct mg_dns_message *msg, void *data,
                       enum mg_resolve_err e) {
  struct mg_connection *nc = (struct mg_connection *) data;
  int i;
  int failure = -1;

  nc->flags &= ~MG_F_RESOLVING;
  if (msg != NULL) {
    /*
     * Take the first DNS A answer and run...
     */
    for (i = 0; i < msg->num_answers; i++) {
      if (msg->answers[i].rtype == MG_DNS_A_RECORD) {
        /*
         * Async resolver guarantees that there is at least one answer.
         * TODO(lsm): handle IPv6 answers too
         */
        FUNC2(msg, &msg->answers[i], &nc->sa.sin.sin_addr,
                                 4);
        FUNC3(nc, nc->flags & MG_F_UDP ? SOCK_DGRAM : SOCK_STREAM,
                      &nc->sa);
        return;
      }
    }
  }

  if (e == MG_RESOLVE_TIMEOUT) {
    double now = FUNC4();
    FUNC0(nc, NULL, nc->user_data, MG_EV_TIMER, &now);
  }

  /*
   * If we get there was no MG_DNS_A_RECORD in the answer
   */
  FUNC0(nc, NULL, nc->user_data, MG_EV_CONNECT, &failure);
  FUNC0(nc, NULL, nc->user_data, MG_EV_CLOSE, NULL);
  FUNC1(nc, 1 /* destroy_if */);
}