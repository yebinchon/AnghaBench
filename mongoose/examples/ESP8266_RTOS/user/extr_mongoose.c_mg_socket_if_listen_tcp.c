
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_address {int dummy; } socket_address ;
struct mg_connection {int dummy; } ;
typedef scalar_t__ sock_t ;


 scalar_t__ INVALID_SOCKET ;
 int SOCK_STREAM ;
 int mg_get_errno () ;
 scalar_t__ mg_open_listening_socket (union socket_address*,int ,int) ;
 int mg_sock_set (struct mg_connection*,scalar_t__) ;

int mg_socket_if_listen_tcp(struct mg_connection *nc,
                            union socket_address *sa) {
  int proto = 0;
  sock_t sock = mg_open_listening_socket(sa, SOCK_STREAM, proto);
  if (sock == INVALID_SOCKET) {
    return (mg_get_errno() ? mg_get_errno() : 1);
  }
  mg_sock_set(nc, sock);
  return 0;
}
