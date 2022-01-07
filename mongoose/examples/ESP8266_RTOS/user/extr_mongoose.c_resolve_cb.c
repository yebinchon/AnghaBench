
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mg_dns_message {int num_answers; TYPE_3__* answers; } ;
struct TYPE_4__ {int sin_addr; } ;
struct TYPE_5__ {TYPE_1__ sin; } ;
struct mg_connection {int flags; int user_data; TYPE_2__ sa; } ;
typedef enum mg_resolve_err { ____Placeholder_mg_resolve_err } mg_resolve_err ;
struct TYPE_6__ {scalar_t__ rtype; } ;


 scalar_t__ MG_DNS_A_RECORD ;
 int MG_EV_CLOSE ;
 int MG_EV_CONNECT ;
 int MG_EV_TIMER ;
 int MG_F_RESOLVING ;
 int MG_F_UDP ;
 int MG_RESOLVE_TIMEOUT ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int mg_call (struct mg_connection*,int *,int ,int ,...) ;
 int mg_destroy_conn (struct mg_connection*,int) ;
 int mg_dns_parse_record_data (struct mg_dns_message*,TYPE_3__*,int *,int) ;
 int mg_do_connect (struct mg_connection*,int ,TYPE_2__*) ;
 double mg_time () ;

__attribute__((used)) static void resolve_cb(struct mg_dns_message *msg, void *data,
                       enum mg_resolve_err e) {
  struct mg_connection *nc = (struct mg_connection *) data;
  int i;
  int failure = -1;

  nc->flags &= ~MG_F_RESOLVING;
  if (msg != ((void*)0)) {



    for (i = 0; i < msg->num_answers; i++) {
      if (msg->answers[i].rtype == MG_DNS_A_RECORD) {




        mg_dns_parse_record_data(msg, &msg->answers[i], &nc->sa.sin.sin_addr,
                                 4);
        mg_do_connect(nc, nc->flags & MG_F_UDP ? SOCK_DGRAM : SOCK_STREAM,
                      &nc->sa);
        return;
      }
    }
  }

  if (e == MG_RESOLVE_TIMEOUT) {
    double now = mg_time();
    mg_call(nc, ((void*)0), nc->user_data, MG_EV_TIMER, &now);
  }




  mg_call(nc, ((void*)0), nc->user_data, MG_EV_CONNECT, &failure);
  mg_call(nc, ((void*)0), nc->user_data, MG_EV_CLOSE, ((void*)0));
  mg_destroy_conn(nc, 1 );
}
