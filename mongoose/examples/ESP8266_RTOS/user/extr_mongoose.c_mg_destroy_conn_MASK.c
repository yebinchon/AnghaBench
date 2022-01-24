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
struct mg_connection {scalar_t__ sock; int /*<<< orphan*/  send_mbuf; int /*<<< orphan*/  recv_mbuf; int /*<<< orphan*/ * proto_data; int /*<<< orphan*/  (* proto_data_destructor ) (int /*<<< orphan*/ *) ;TYPE_1__* iface; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy_conn ) (struct mg_connection*) ;} ;
struct TYPE_3__ {TYPE_2__* vtable; } ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mg_connection *conn, int destroy_if) {
  if (conn->sock != INVALID_SOCKET) { /* Don't print timer-only conns */
    FUNC0(LL_DEBUG, ("%p 0x%lx %d", conn, conn->flags, destroy_if));
  }
  if (destroy_if) conn->iface->vtable->destroy_conn(conn);
  if (conn->proto_data != NULL && conn->proto_data_destructor != NULL) {
    conn->proto_data_destructor(conn->proto_data);
  }
#if MG_ENABLE_SSL
  mg_ssl_if_conn_free(conn);
#endif
  FUNC2(&conn->recv_mbuf);
  FUNC2(&conn->send_mbuf);

  FUNC3(conn, 0, sizeof(*conn));
  FUNC1(conn);
}