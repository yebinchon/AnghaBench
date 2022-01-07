
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sock_t ;
typedef int fd_set ;


 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 scalar_t__ INVALID_SOCKET ;

void mg_add_to_set(sock_t sock, fd_set *set, sock_t *max_fd) {
  if (sock != INVALID_SOCKET

      && sock < (sock_t) FD_SETSIZE

      ) {
    FD_SET(sock, set);
    if (*max_fd == INVALID_SOCKET || sock > *max_fd) {
      *max_fd = sock;
    }
  }
}
