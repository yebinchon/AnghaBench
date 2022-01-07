
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct mg_mgr {scalar_t__* ctl; struct mg_connection* active_connections; } ;
struct mg_iface {struct mg_mgr* mgr; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct mg_connection {scalar_t__ sock; scalar_t__ recv_mbuf_limit; int flags; double ev_timer_time; struct mg_connection* next; int * listener; TYPE_2__ send_mbuf; TYPE_1__ recv_mbuf; } ;
typedef scalar_t__ sock_t ;
typedef int fd_set ;


 int DBG (char*) ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 scalar_t__ INVALID_SOCKET ;
 int MG_F_CONNECTING ;
 int MG_F_UDP ;
 int MG_F_WANT_READ ;
 int _MG_F_FD_CAN_READ ;
 int _MG_F_FD_CAN_WRITE ;
 int _MG_F_FD_ERROR ;
 int closesocket (int) ;
 int dup (scalar_t__) ;
 int mg_add_to_set (scalar_t__,int *,scalar_t__*) ;
 int mg_mgr_handle_conn (struct mg_connection*,int,double) ;
 int mg_mgr_handle_ctl_sock (struct mg_mgr*) ;
 double mg_time () ;
 int select (int,int *,int *,int *,struct timeval*) ;

time_t mg_socket_if_poll(struct mg_iface *iface, int timeout_ms) {
  struct mg_mgr *mgr = iface->mgr;
  double now = mg_time();
  double min_timer;
  struct mg_connection *nc, *tmp;
  struct timeval tv;
  fd_set read_set, write_set, err_set;
  sock_t max_fd = INVALID_SOCKET;
  int num_fds, num_ev, num_timers = 0;

  int try_dup = 1;


  FD_ZERO(&read_set);
  FD_ZERO(&write_set);
  FD_ZERO(&err_set);
  min_timer = 0;
  for (nc = mgr->active_connections, num_fds = 0; nc != ((void*)0); nc = tmp) {
    tmp = nc->next;

    if (nc->sock != INVALID_SOCKET) {
      num_fds++;



      if (nc->sock >= (sock_t) FD_SETSIZE && try_dup) {
        int new_sock = dup(nc->sock);
        if (new_sock >= 0) {
          if (new_sock < (sock_t) FD_SETSIZE) {
            closesocket(nc->sock);
            DBG(("new sock %d -> %d", nc->sock, new_sock));
            nc->sock = new_sock;
          } else {
            closesocket(new_sock);
            DBG(("new sock is still larger than FD_SETSIZE, disregard"));
            try_dup = 0;
          }
        } else {
          try_dup = 0;
        }
      }


      if (nc->recv_mbuf.len < nc->recv_mbuf_limit &&
          (!(nc->flags & MG_F_UDP) || nc->listener == ((void*)0))) {
        mg_add_to_set(nc->sock, &read_set, &max_fd);
      }

      if (((nc->flags & MG_F_CONNECTING) && !(nc->flags & MG_F_WANT_READ)) ||
          (nc->send_mbuf.len > 0 && !(nc->flags & MG_F_CONNECTING))) {
        mg_add_to_set(nc->sock, &write_set, &max_fd);
        mg_add_to_set(nc->sock, &err_set, &max_fd);
      }
    }

    if (nc->ev_timer_time > 0) {
      if (num_timers == 0 || nc->ev_timer_time < min_timer) {
        min_timer = nc->ev_timer_time;
      }
      num_timers++;
    }
  }





  if (num_timers > 0) {
    double timer_timeout_ms = (min_timer - mg_time()) * 1000 + 1 ;
    if (timer_timeout_ms < timeout_ms) {
      timeout_ms = (int) timer_timeout_ms;
    }
  }
  if (timeout_ms < 0) timeout_ms = 0;

  tv.tv_sec = timeout_ms / 1000;
  tv.tv_usec = (timeout_ms % 1000) * 1000;

  num_ev = select((int) max_fd + 1, &read_set, &write_set, &err_set, &tv);
  now = mg_time();
  for (nc = mgr->active_connections; nc != ((void*)0); nc = tmp) {
    int fd_flags = 0;
    if (nc->sock != INVALID_SOCKET) {
      if (num_ev > 0) {
        fd_flags = (FD_ISSET(nc->sock, &read_set) &&
                            (!(nc->flags & MG_F_UDP) || nc->listener == ((void*)0))
                        ? _MG_F_FD_CAN_READ
                        : 0) |
                   (FD_ISSET(nc->sock, &write_set) ? _MG_F_FD_CAN_WRITE : 0) |
                   (FD_ISSET(nc->sock, &err_set) ? _MG_F_FD_ERROR : 0);
      }






    }
    tmp = nc->next;
    mg_mgr_handle_conn(nc, fd_flags, now);
  }

  return (time_t) now;
}
