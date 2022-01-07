
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_address {int dummy; } socket_address ;
typedef int sock_t ;


 int MG_SOCK_STRINGIFY_REMOTE ;
 int mg_sock_addr_to_str (union socket_address*,char*,size_t,int) ;
 int mg_sock_get_addr (int ,int,union socket_address*) ;

void mg_sock_to_str(sock_t sock, char *buf, size_t len, int flags) {
  union socket_address sa;
  mg_sock_get_addr(sock, flags & MG_SOCK_STRINGIFY_REMOTE, &sa);
  mg_sock_addr_to_str(&sa, buf, len, flags);
}
