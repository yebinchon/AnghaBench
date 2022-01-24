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
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct mg_connection {int flags; int err; TYPE_2__ send_mbuf; TYPE_1__ recv_mbuf; int /*<<< orphan*/  sock; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EAGAIN ; 
 int EWOULDBLOCK ; 
 int MG_F_CONNECTING ; 
 int MG_F_LISTENING ; 
 int MG_F_UDP ; 
 int MG_F_WANT_READ ; 
 int MG_F_WANT_WRITE ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int _MG_F_FD_CAN_READ ; 
 int _MG_F_FD_CAN_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,double) ; 

void FUNC7(struct mg_connection *nc, int fd_flags, double now) {
  int worth_logging =
      fd_flags != 0 || (nc->flags & (MG_F_WANT_READ | MG_F_WANT_WRITE));
  if (worth_logging) {
    FUNC0(("%p fd=%d fd_flags=%d nc_flags=0x%lx rmbl=%d smbl=%d", nc, nc->sock,
         fd_flags, nc->flags, (int) nc->recv_mbuf.len,
         (int) nc->send_mbuf.len));
  }

  if (!FUNC6(nc, now)) return;

  if (nc->flags & MG_F_CONNECTING) {
    if (fd_flags != 0) {
      int err = 0;
#if !defined(MG_ESP8266)
      if (!(nc->flags & MG_F_UDP)) {
        socklen_t len = sizeof(err);
        int ret =
            FUNC1(nc->sock, SOL_SOCKET, SO_ERROR, (char *) &err, &len);
        if (ret != 0) {
          err = 1;
        } else if (err == EAGAIN || err == EWOULDBLOCK) {
          err = 0;
        }
      }
#else
      /*
       * On ESP8266 we use blocking connect.
       */
      err = nc->err;
#endif
      FUNC5(nc, err);
    } else if (nc->err != 0) {
      FUNC5(nc, nc->err);
    }
  }

  if (fd_flags & _MG_F_FD_CAN_READ) {
    if (nc->flags & MG_F_UDP) {
      FUNC3(nc);
    } else {
      if (nc->flags & MG_F_LISTENING) {
        /*
         * We're not looping here, and accepting just one connection at
         * a time. The reason is that eCos does not respect non-blocking
         * flag on a listening socket and hangs in a loop.
         */
        FUNC2(nc);
      } else {
        FUNC3(nc);
      }
    }
  }

  if (fd_flags & _MG_F_FD_CAN_WRITE) FUNC4(nc);

  if (worth_logging) {
    FUNC0(("%p after fd=%d nc_flags=0x%lx rmbl=%d smbl=%d", nc, nc->sock,
         nc->flags, (int) nc->recv_mbuf.len, (int) nc->send_mbuf.len));
  }
}