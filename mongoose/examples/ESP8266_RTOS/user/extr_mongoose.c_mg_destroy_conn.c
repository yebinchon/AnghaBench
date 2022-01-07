
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_connection {scalar_t__ sock; int send_mbuf; int recv_mbuf; int * proto_data; int (* proto_data_destructor ) (int *) ;TYPE_1__* iface; int flags; } ;
struct TYPE_4__ {int (* destroy_conn ) (struct mg_connection*) ;} ;
struct TYPE_3__ {TYPE_2__* vtable; } ;


 scalar_t__ INVALID_SOCKET ;
 int LL_DEBUG ;
 int LOG (int ,char*) ;
 int MG_FREE (struct mg_connection*) ;
 int mbuf_free (int *) ;
 int memset (struct mg_connection*,int ,int) ;
 int mg_ssl_if_conn_free (struct mg_connection*) ;
 int stub1 (struct mg_connection*) ;
 int stub2 (int *) ;

void mg_destroy_conn(struct mg_connection *conn, int destroy_if) {
  if (conn->sock != INVALID_SOCKET) {
    LOG(LL_DEBUG, ("%p 0x%lx %d", conn, conn->flags, destroy_if));
  }
  if (destroy_if) conn->iface->vtable->destroy_conn(conn);
  if (conn->proto_data != ((void*)0) && conn->proto_data_destructor != ((void*)0)) {
    conn->proto_data_destructor(conn->proto_data);
  }



  mbuf_free(&conn->recv_mbuf);
  mbuf_free(&conn->send_mbuf);

  memset(conn, 0, sizeof(*conn));
  MG_FREE(conn);
}
