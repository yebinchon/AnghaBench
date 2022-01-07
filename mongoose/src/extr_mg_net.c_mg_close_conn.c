
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_connection {scalar_t__ sock; int flags; int user_data; TYPE_1__* iface; } ;
struct TYPE_4__ {int (* destroy_conn ) (struct mg_connection*) ;} ;
struct TYPE_3__ {TYPE_2__* vtable; } ;


 scalar_t__ INVALID_SOCKET ;
 int MG_EV_CLOSE ;
 int MG_F_CLOSE_IMMEDIATELY ;
 int MG_F_RECV_AND_CLOSE ;
 int MG_F_SSL_HANDSHAKE_DONE ;
 int mg_call (struct mg_connection*,int *,int ,int ,int *) ;
 int mg_destroy_conn (struct mg_connection*,int ) ;
 int mg_do_recv (struct mg_connection*) ;
 int mg_remove_conn (struct mg_connection*) ;
 int mg_ssl_if_conn_close_notify (struct mg_connection*) ;
 int stub1 (struct mg_connection*) ;

void mg_close_conn(struct mg_connection *conn) {


  if (conn->sock != INVALID_SOCKET && mg_do_recv(conn) == -2) {

    conn->flags |= MG_F_RECV_AND_CLOSE;
    return;
  }
  conn->flags |= MG_F_CLOSE_IMMEDIATELY;
  mg_remove_conn(conn);
  conn->iface->vtable->destroy_conn(conn);
  mg_call(conn, ((void*)0), conn->user_data, MG_EV_CLOSE, ((void*)0));
  mg_destroy_conn(conn, 0 );
}
