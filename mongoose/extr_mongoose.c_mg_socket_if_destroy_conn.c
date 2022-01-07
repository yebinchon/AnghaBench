
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {scalar_t__ sock; int flags; int * listener; } ;


 scalar_t__ INVALID_SOCKET ;
 int MG_F_UDP ;
 int closesocket (scalar_t__) ;

void mg_socket_if_destroy_conn(struct mg_connection *nc) {
  if (nc->sock == INVALID_SOCKET) return;
  if (!(nc->flags & MG_F_UDP)) {
    closesocket(nc->sock);
  } else {

    if (nc->listener == ((void*)0)) closesocket(nc->sock);
  }
  nc->sock = INVALID_SOCKET;
}
