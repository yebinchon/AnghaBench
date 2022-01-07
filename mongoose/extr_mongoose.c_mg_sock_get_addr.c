
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union socket_address {int sa; } ;
typedef int socklen_t ;
typedef int sock_t ;


 int getpeername (int ,int *,int*) ;
 int getsockname (int ,int *,int*) ;
 int memset (union socket_address*,int ,int) ;

__attribute__((used)) static void mg_sock_get_addr(sock_t sock, int remote,
                             union socket_address *sa) {
  socklen_t slen = sizeof(*sa);
  memset(sa, 0, slen);
  if (remote) {
    getpeername(sock, &sa->sa, &slen);
  } else {
    getsockname(sock, &sa->sa, &slen);
  }
}
