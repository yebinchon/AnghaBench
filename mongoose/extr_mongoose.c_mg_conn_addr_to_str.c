
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_address {int dummy; } socket_address ;
struct mg_connection {int dummy; } ;
typedef int sa ;


 int MG_SOCK_STRINGIFY_REMOTE ;
 int memset (union socket_address*,int ,int) ;
 int mg_if_get_conn_addr (struct mg_connection*,int,union socket_address*) ;
 int mg_sock_addr_to_str (union socket_address*,char*,size_t,int) ;

int mg_conn_addr_to_str(struct mg_connection *nc, char *buf, size_t len,
                        int flags) {
  union socket_address sa;
  memset(&sa, 0, sizeof(sa));
  mg_if_get_conn_addr(nc, flags & MG_SOCK_STRINGIFY_REMOTE, &sa);
  return mg_sock_addr_to_str(&sa, buf, len, flags);
}
