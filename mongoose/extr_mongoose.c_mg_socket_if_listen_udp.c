
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_address {int dummy; } socket_address ;
struct mg_connection {int dummy; } ;
typedef scalar_t__ sock_t ;


 scalar_t__ INVALID_SOCKET ;
 int SOCK_DGRAM ;
 int mg_get_errno () ;
 scalar_t__ mg_open_listening_socket (union socket_address*,int ,int ) ;
 int mg_sock_set (struct mg_connection*,scalar_t__) ;

__attribute__((used)) static int mg_socket_if_listen_udp(struct mg_connection *nc,
                                   union socket_address *sa) {
  sock_t sock = mg_open_listening_socket(sa, SOCK_DGRAM, 0);
  if (sock == INVALID_SOCKET) return (mg_get_errno() ? mg_get_errno() : 1);
  mg_sock_set(nc, sock);
  return 0;
}
