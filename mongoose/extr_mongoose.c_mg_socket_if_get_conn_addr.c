
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_address {int dummy; } socket_address ;
struct mg_connection {int flags; int sock; int sa; } ;


 int MG_F_UDP ;
 int memcpy (union socket_address*,int *,int) ;
 int mg_sock_get_addr (int ,int,union socket_address*) ;

void mg_socket_if_get_conn_addr(struct mg_connection *nc, int remote,
                                union socket_address *sa) {
  if ((nc->flags & MG_F_UDP) && remote) {
    memcpy(sa, &nc->sa, sizeof(*sa));
    return;
  }
  mg_sock_get_addr(nc->sock, remote, sa);
}
