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
struct TYPE_3__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
union socket_address {TYPE_1__ sin; } ;
struct mg_connection {int flags; union socket_address sa; int /*<<< orphan*/  user_data; TYPE_2__* listener; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MG_EV_ACCEPT ; 
 int MG_F_SSL ; 
 int MG_F_UDP ; 
 scalar_t__ MG_SSL_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union socket_address*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 scalar_t__ FUNC5 (struct mg_connection*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct mg_connection *nc, union socket_address *sa,
                         size_t sa_len) {
  FUNC0(LL_DEBUG, ("%p %s://%s:%hu", nc, (nc->flags & MG_F_UDP ? "udp" : "tcp"),
                 FUNC1(sa->sin.sin_addr), FUNC6(sa->sin.sin_port)));
  nc->sa = *sa;
#if MG_ENABLE_SSL
  if (nc->listener->flags & MG_F_SSL) {
    nc->flags |= MG_F_SSL;
    if (mg_ssl_if_conn_accept(nc, nc->listener) == MG_SSL_OK) {
      mg_ssl_handshake(nc);
    } else {
      mg_close_conn(nc);
    }
  } else
#endif
  {
    FUNC2(nc, NULL, nc->user_data, MG_EV_ACCEPT, &nc->sa);
  }
  (void) sa_len;
}