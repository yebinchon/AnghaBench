#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mg_ev_mgr_lwip_data {int sig_queue_len; int start_index; TYPE_1__* sig_queue; } ;
struct mg_connection {int /*<<< orphan*/  mgr; TYPE_2__* iface; } ;
typedef  enum mg_sig_type { ____Placeholder_mg_sig_type } mg_sig_type ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int sig; struct mg_connection* nc; } ;

/* Variables and functions */
 int MG_SIG_QUEUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(enum mg_sig_type sig, struct mg_connection *nc) {
  struct mg_ev_mgr_lwip_data *md =
      (struct mg_ev_mgr_lwip_data *) nc->iface->data;
  FUNC1();
  if (md->sig_queue_len >= MG_SIG_QUEUE_LEN) {
    FUNC2();
    return;
  }
  int end_index = (md->start_index + md->sig_queue_len) % MG_SIG_QUEUE_LEN;
  md->sig_queue[end_index].sig = sig;
  md->sig_queue[end_index].nc = nc;
  md->sig_queue_len++;
  FUNC0(nc->mgr);
  FUNC2();
}