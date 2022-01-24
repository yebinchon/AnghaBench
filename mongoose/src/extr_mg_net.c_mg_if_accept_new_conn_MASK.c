#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mg_connection {int flags; int /*<<< orphan*/  sock; int /*<<< orphan*/  mgr; int /*<<< orphan*/  iface; int /*<<< orphan*/  recv_mbuf_limit; int /*<<< orphan*/  user_data; int /*<<< orphan*/  proto_handler; struct mg_connection* listener; int /*<<< orphan*/  handler; } ;
struct mg_add_sock_opts {int dummy; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int MG_F_SSL ; 
 int /*<<< orphan*/  FUNC1 (struct mg_add_sock_opts*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mg_connection*) ; 
 struct mg_connection* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mg_add_sock_opts) ; 

struct mg_connection *FUNC4(struct mg_connection *lc) {
  struct mg_add_sock_opts opts;
  struct mg_connection *nc;
  FUNC1(&opts, 0, sizeof(opts));
  nc = FUNC3(lc->mgr, lc->handler, opts);
  if (nc == NULL) return NULL;
  nc->listener = lc;
  nc->proto_handler = lc->proto_handler;
  nc->user_data = lc->user_data;
  nc->recv_mbuf_limit = lc->recv_mbuf_limit;
  nc->iface = lc->iface;
  if (lc->flags & MG_F_SSL) nc->flags |= MG_F_SSL;
  FUNC2(nc->mgr, nc);
  FUNC0(LL_DEBUG, ("%p %p %d %d", lc, nc, nc->sock, (int) nc->flags));
  return nc;
}