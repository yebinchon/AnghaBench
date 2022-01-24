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
typedef  int /*<<< orphan*/  time_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct mg_mgr {scalar_t__* ctl; struct mg_connection* active_connections; } ;
struct mg_iface {struct mg_mgr* mgr; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct mg_connection {scalar_t__ sock; scalar_t__ recv_mbuf_limit; int flags; double ev_timer_time; struct mg_connection* next; int /*<<< orphan*/ * listener; TYPE_2__ send_mbuf; TYPE_1__ recv_mbuf; } ;
typedef  scalar_t__ sock_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_SOCKET ; 
 int MG_F_CONNECTING ; 
 int MG_F_UDP ; 
 int MG_F_WANT_READ ; 
 int _MG_F_FD_CAN_READ ; 
 int _MG_F_FD_CAN_WRITE ; 
 int _MG_F_FD_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,int,double) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*) ; 
 double FUNC8 () ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

time_t FUNC10(struct mg_iface *iface, int timeout_ms) {
  struct mg_mgr *mgr = iface->mgr;
  double now = FUNC8();
  double min_timer;
  struct mg_connection *nc, *tmp;
  struct timeval tv;
  fd_set read_set, write_set, err_set;
  sock_t max_fd = INVALID_SOCKET;
  int num_fds, num_ev, num_timers = 0;
#ifdef __unix__
  int try_dup = 1;
#endif

  FUNC2(&read_set);
  FUNC2(&write_set);
  FUNC2(&err_set);
#if MG_ENABLE_BROADCAST
  mg_add_to_set(mgr->ctl[1], &read_set, &max_fd);
#endif

  /*
   * Note: it is ok to have connections with sock == INVALID_SOCKET in the list,
   * e.g. timer-only "connections".
   */
  min_timer = 0;
  for (nc = mgr->active_connections, num_fds = 0; nc != NULL; nc = tmp) {
    tmp = nc->next;

    if (nc->sock != INVALID_SOCKET) {
      num_fds++;

#ifdef __unix__
      /* A hack to make sure all our file descriptos fit into FD_SETSIZE. */
      if (nc->sock >= (sock_t) FD_SETSIZE && try_dup) {
        int new_sock = FUNC4(nc->sock);
        if (new_sock >= 0) {
          if (new_sock < (sock_t) FD_SETSIZE) {
            FUNC3(nc->sock);
            FUNC0(("new sock %d -> %d", nc->sock, new_sock));
            nc->sock = new_sock;
          } else {
            FUNC3(new_sock);
            FUNC0(("new sock is still larger than FD_SETSIZE, disregard"));
            try_dup = 0;
          }
        } else {
          try_dup = 0;
        }
      }
#endif

      if (nc->recv_mbuf.len < nc->recv_mbuf_limit &&
          (!(nc->flags & MG_F_UDP) || nc->listener == NULL)) {
        FUNC5(nc->sock, &read_set, &max_fd);
      }

      if (((nc->flags & MG_F_CONNECTING) && !(nc->flags & MG_F_WANT_READ)) ||
          (nc->send_mbuf.len > 0 && !(nc->flags & MG_F_CONNECTING))) {
        FUNC5(nc->sock, &write_set, &max_fd);
        FUNC5(nc->sock, &err_set, &max_fd);
      }
    }

    if (nc->ev_timer_time > 0) {
      if (num_timers == 0 || nc->ev_timer_time < min_timer) {
        min_timer = nc->ev_timer_time;
      }
      num_timers++;
    }
  }

  /*
   * If there is a timer to be fired earlier than the requested timeout,
   * adjust the timeout.
   */
  if (num_timers > 0) {
    double timer_timeout_ms = (min_timer - FUNC8()) * 1000 + 1 /* rounding */;
    if (timer_timeout_ms < timeout_ms) {
      timeout_ms = (int) timer_timeout_ms;
    }
  }
  if (timeout_ms < 0) timeout_ms = 0;

  tv.tv_sec = timeout_ms / 1000;
  tv.tv_usec = (timeout_ms % 1000) * 1000;

  num_ev = FUNC9((int) max_fd + 1, &read_set, &write_set, &err_set, &tv);
  now = FUNC8();
#if 0
  DBG(("select @ %ld num_ev=%d of %d, timeout=%d", (long) now, num_ev, num_fds,
       timeout_ms));
#endif

#if MG_ENABLE_BROADCAST
  if (num_ev > 0 && mgr->ctl[1] != INVALID_SOCKET &&
      FD_ISSET(mgr->ctl[1], &read_set)) {
    mg_mgr_handle_ctl_sock(mgr);
  }
#endif

  for (nc = mgr->active_connections; nc != NULL; nc = tmp) {
    int fd_flags = 0;
    if (nc->sock != INVALID_SOCKET) {
      if (num_ev > 0) {
        fd_flags = (FUNC1(nc->sock, &read_set) &&
                            (!(nc->flags & MG_F_UDP) || nc->listener == NULL)
                        ? _MG_F_FD_CAN_READ
                        : 0) |
                   (FUNC1(nc->sock, &write_set) ? _MG_F_FD_CAN_WRITE : 0) |
                   (FUNC1(nc->sock, &err_set) ? _MG_F_FD_ERROR : 0);
      }
#if MG_LWIP
      /* With LWIP socket emulation layer, we don't get write events for UDP */
      if ((nc->flags & MG_F_UDP) && nc->listener == NULL) {
        fd_flags |= _MG_F_FD_CAN_WRITE;
      }
#endif
    }
    tmp = nc->next;
    FUNC6(nc, fd_flags, now);
  }

  return (time_t) now;
}