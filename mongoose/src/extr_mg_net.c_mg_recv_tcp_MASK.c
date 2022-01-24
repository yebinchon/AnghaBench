#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_8__ {int len; } ;
struct mg_connection {int flags; TYPE_4__ recv_mbuf; int /*<<< orphan*/  user_data; TYPE_3__* mgr; scalar_t__ last_io_time; TYPE_2__* iface; } ;
struct TYPE_7__ {int /*<<< orphan*/ * hexdump_file; } ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
struct TYPE_5__ {int (* tcp_recv ) (struct mg_connection*,char*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MG_EV_RECV ; 
 int MG_F_CLOSE_IMMEDIATELY ; 
 int MG_F_SSL ; 
 int MG_F_SSL_HANDSHAKE_DONE ; 
 int MG_F_WANT_READ ; 
 int MG_SSL_WANT_READ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int FUNC5 (struct mg_connection*,char*,size_t) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (struct mg_connection*,char*,size_t) ; 

__attribute__((used)) static int FUNC8(struct mg_connection *nc, char *buf, size_t len) {
  int n = 0;
#if MG_ENABLE_SSL
  if (nc->flags & MG_F_SSL) {
    if (nc->flags & MG_F_SSL_HANDSHAKE_DONE) {
      n = mg_ssl_if_read(nc, buf, len);
      DBG(("%p <- %d bytes (SSL)", nc, n));
      if (n < 0) {
        if (n == MG_SSL_WANT_READ) {
          nc->flags |= MG_F_WANT_READ;
          n = 0;
        } else {
          nc->flags |= MG_F_CLOSE_IMMEDIATELY;
        }
      } else if (n > 0) {
        nc->flags &= ~MG_F_WANT_READ;
      }
    } else {
      mg_ssl_handshake(nc);
    }
  } else
#endif
  {
    n = nc->iface->vtable->tcp_recv(nc, buf, len);
    FUNC0(("%p <- %d bytes", nc, n));
  }
  if (n > 0) {
    nc->recv_mbuf.len += n;
    nc->last_io_time = (time_t) FUNC6();
#if !defined(NO_LIBC) && MG_ENABLE_HEXDUMP
    if (nc->mgr && nc->mgr->hexdump_file != NULL) {
      mg_hexdump_connection(nc, nc->mgr->hexdump_file, buf, n, MG_EV_RECV);
    }
#endif
    FUNC1(&nc->recv_mbuf);
    FUNC2(nc, NULL, nc->user_data, MG_EV_RECV, &n);
  } else if (n < 0) {
    nc->flags |= MG_F_CLOSE_IMMEDIATELY;
  }
  FUNC1(&nc->recv_mbuf);
  return n;
}