
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct mg_connection {int flags; int err; TYPE_2__ send_mbuf; TYPE_1__ recv_mbuf; int sock; } ;
typedef int socklen_t ;
typedef int err ;


 int DBG (char*) ;
 int EAGAIN ;
 int EWOULDBLOCK ;
 int MG_F_CONNECTING ;
 int MG_F_LISTENING ;
 int MG_F_UDP ;
 int MG_F_WANT_READ ;
 int MG_F_WANT_WRITE ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int _MG_F_FD_CAN_READ ;
 int _MG_F_FD_CAN_WRITE ;
 int getsockopt (int ,int ,int ,char*,int*) ;
 int mg_accept_conn (struct mg_connection*) ;
 int mg_if_can_recv_cb (struct mg_connection*) ;
 int mg_if_can_send_cb (struct mg_connection*) ;
 int mg_if_connect_cb (struct mg_connection*,int) ;
 int mg_if_poll (struct mg_connection*,double) ;

void mg_mgr_handle_conn(struct mg_connection *nc, int fd_flags, double now) {
  int worth_logging =
      fd_flags != 0 || (nc->flags & (MG_F_WANT_READ | MG_F_WANT_WRITE));
  if (worth_logging) {
    DBG(("%p fd=%d fd_flags=%d nc_flags=0x%lx rmbl=%d smbl=%d", nc, nc->sock,
         fd_flags, nc->flags, (int) nc->recv_mbuf.len,
         (int) nc->send_mbuf.len));
  }

  if (!mg_if_poll(nc, now)) return;

  if (nc->flags & MG_F_CONNECTING) {
    if (fd_flags != 0) {
      int err = 0;

      if (!(nc->flags & MG_F_UDP)) {
        socklen_t len = sizeof(err);
        int ret =
            getsockopt(nc->sock, SOL_SOCKET, SO_ERROR, (char *) &err, &len);
        if (ret != 0) {
          err = 1;
        } else if (err == EAGAIN || err == EWOULDBLOCK) {
          err = 0;
        }
      }






      mg_if_connect_cb(nc, err);
    } else if (nc->err != 0) {
      mg_if_connect_cb(nc, nc->err);
    }
  }

  if (fd_flags & _MG_F_FD_CAN_READ) {
    if (nc->flags & MG_F_UDP) {
      mg_if_can_recv_cb(nc);
    } else {
      if (nc->flags & MG_F_LISTENING) {





        mg_accept_conn(nc);
      } else {
        mg_if_can_recv_cb(nc);
      }
    }
  }

  if (fd_flags & _MG_F_FD_CAN_WRITE) mg_if_can_send_cb(nc);

  if (worth_logging) {
    DBG(("%p after fd=%d nc_flags=0x%lx rmbl=%d smbl=%d", nc, nc->sock,
         nc->flags, (int) nc->recv_mbuf.len, (int) nc->send_mbuf.len));
  }
}
