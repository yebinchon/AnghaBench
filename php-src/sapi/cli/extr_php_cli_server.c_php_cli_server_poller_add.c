
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ php_socket_t ;
struct TYPE_3__ {scalar_t__ max_fd; int wfds; int rfds; } ;
typedef TYPE_1__ php_cli_server_poller ;


 int PHP_SAFE_FD_SET (scalar_t__,int *) ;
 int POLLIN ;
 int POLLOUT ;

__attribute__((used)) static void php_cli_server_poller_add(php_cli_server_poller *poller, int mode, php_socket_t fd)
{
 if (mode & POLLIN) {
  PHP_SAFE_FD_SET(fd, &poller->rfds);
 }
 if (mode & POLLOUT) {
  PHP_SAFE_FD_SET(fd, &poller->wfds);
 }
 if (fd > poller->max_fd) {
  poller->max_fd = fd;
 }
}
