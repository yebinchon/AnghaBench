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
struct mg_connection {scalar_t__ sock; int flags; int /*<<< orphan*/  user_data; TYPE_1__* iface; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy_conn ) (struct mg_connection*) ;} ;
struct TYPE_3__ {TYPE_2__* vtable; } ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  MG_EV_CLOSE ; 
 int MG_F_CLOSE_IMMEDIATELY ; 
 int MG_F_RECV_AND_CLOSE ; 
 int MG_F_SSL_HANDSHAKE_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*) ; 

void FUNC6(struct mg_connection *conn) {
  /* See if there's any remaining data to deliver. Skip if user completely
   * throttled the connection there will be no progress anyway. */
  if (conn->sock != INVALID_SOCKET && FUNC2(conn) == -2) {
    /* Receive is throttled, wait. */
    conn->flags |= MG_F_RECV_AND_CLOSE;
    return;
  }
#if MG_ENABLE_SSL
  if (conn->flags & MG_F_SSL_HANDSHAKE_DONE) {
    mg_ssl_if_conn_close_notify(conn);
  }
#endif
  /*
   * Clearly mark the connection as going away (if not already).
   * Some net_if impls (LwIP) need this for cleanly handling half-dead conns.
   */
  conn->flags |= MG_F_CLOSE_IMMEDIATELY;
  FUNC3(conn);
  conn->iface->vtable->destroy_conn(conn);
  FUNC0(conn, NULL, conn->user_data, MG_EV_CLOSE, NULL);
  FUNC1(conn, 0 /* destroy_if */);
}