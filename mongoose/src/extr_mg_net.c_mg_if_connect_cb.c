
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin_port; int sin_addr; } ;
struct TYPE_4__ {TYPE_1__ sin; } ;
struct mg_connection {int flags; int user_data; TYPE_2__ sa; } ;


 int LL_DEBUG ;
 int LOG (int ,char*) ;
 int MG_EV_CONNECT ;
 int MG_F_CLOSE_IMMEDIATELY ;
 int MG_F_CONNECTING ;
 int MG_F_SSL ;
 int MG_F_UDP ;
 int inet_ntoa (int ) ;
 int mg_call (struct mg_connection*,int *,int ,int ,int*) ;
 int mg_ssl_handshake (struct mg_connection*) ;
 int ntohs (int ) ;

void mg_if_connect_cb(struct mg_connection *nc, int err) {
  LOG(LL_DEBUG,
      ("%p %s://%s:%hu -> %d", nc, (nc->flags & MG_F_UDP ? "udp" : "tcp"),
       inet_ntoa(nc->sa.sin.sin_addr), ntohs(nc->sa.sin.sin_port), err));
  nc->flags &= ~MG_F_CONNECTING;
  if (err != 0) {
    nc->flags |= MG_F_CLOSE_IMMEDIATELY;
  }





  {
    mg_call(nc, ((void*)0), nc->user_data, MG_EV_CONNECT, &err);
  }
}
