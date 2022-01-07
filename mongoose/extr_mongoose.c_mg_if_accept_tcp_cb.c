
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin_port; int sin_addr; } ;
union socket_address {TYPE_1__ sin; } ;
struct mg_connection {int flags; union socket_address sa; int user_data; TYPE_2__* listener; } ;
struct TYPE_4__ {int flags; } ;


 int LL_DEBUG ;
 int LOG (int ,char*) ;
 int MG_EV_ACCEPT ;
 int MG_F_SSL ;
 int MG_F_UDP ;
 scalar_t__ MG_SSL_OK ;
 int inet_ntoa (int ) ;
 int mg_call (struct mg_connection*,int *,int ,int ,union socket_address*) ;
 int mg_close_conn (struct mg_connection*) ;
 int mg_ssl_handshake (struct mg_connection*) ;
 scalar_t__ mg_ssl_if_conn_accept (struct mg_connection*,TYPE_2__*) ;
 int ntohs (int ) ;

void mg_if_accept_tcp_cb(struct mg_connection *nc, union socket_address *sa,
                         size_t sa_len) {
  LOG(LL_DEBUG, ("%p %s://%s:%hu", nc, (nc->flags & MG_F_UDP ? "udp" : "tcp"),
                 inet_ntoa(sa->sin.sin_addr), ntohs(sa->sin.sin_port)));
  nc->sa = *sa;
  {
    mg_call(nc, ((void*)0), nc->user_data, MG_EV_ACCEPT, &nc->sa);
  }
  (void) sa_len;
}
