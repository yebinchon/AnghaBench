
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_8__ {int len; } ;
struct mg_connection {int flags; TYPE_4__ recv_mbuf; int user_data; TYPE_3__* mgr; scalar_t__ last_io_time; TYPE_2__* iface; } ;
struct TYPE_7__ {int * hexdump_file; } ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
struct TYPE_5__ {int (* tcp_recv ) (struct mg_connection*,char*,size_t) ;} ;


 int DBG (char*) ;
 int MG_EV_RECV ;
 int MG_F_CLOSE_IMMEDIATELY ;
 int MG_F_SSL ;
 int MG_F_SSL_HANDSHAKE_DONE ;
 int MG_F_WANT_READ ;
 int MG_SSL_WANT_READ ;
 int mbuf_trim (TYPE_4__*) ;
 int mg_call (struct mg_connection*,int *,int ,int ,int*) ;
 int mg_hexdump_connection (struct mg_connection*,int *,char*,int,int ) ;
 int mg_ssl_handshake (struct mg_connection*) ;
 int mg_ssl_if_read (struct mg_connection*,char*,size_t) ;
 scalar_t__ mg_time () ;
 int stub1 (struct mg_connection*,char*,size_t) ;

__attribute__((used)) static int mg_recv_tcp(struct mg_connection *nc, char *buf, size_t len) {
  int n = 0;
  {
    n = nc->iface->vtable->tcp_recv(nc, buf, len);
    DBG(("%p <- %d bytes", nc, n));
  }
  if (n > 0) {
    nc->recv_mbuf.len += n;
    nc->last_io_time = (time_t) mg_time();





    mbuf_trim(&nc->recv_mbuf);
    mg_call(nc, ((void*)0), nc->user_data, MG_EV_RECV, &n);
  } else if (n < 0) {
    nc->flags |= MG_F_CLOSE_IMMEDIATELY;
  }
  mbuf_trim(&nc->recv_mbuf);
  return n;
}
