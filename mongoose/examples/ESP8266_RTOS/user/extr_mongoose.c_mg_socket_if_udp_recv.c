
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union socket_address {int sa; } ;
struct mg_connection {int sock; } ;
typedef size_t socklen_t ;


 int mg_is_error () ;
 int recvfrom (int ,void*,size_t,int ,int *,size_t*) ;

__attribute__((used)) static int mg_socket_if_udp_recv(struct mg_connection *nc, void *buf,
                                 size_t len, union socket_address *sa,
                                 size_t *sa_len) {
  socklen_t sa_len_st = *sa_len;
  int n = recvfrom(nc->sock, buf, len, 0, &sa->sa, &sa_len_st);
  *sa_len = sa_len_st;
  if (n < 0 && !mg_is_error()) n = 0;
  return n;
}
