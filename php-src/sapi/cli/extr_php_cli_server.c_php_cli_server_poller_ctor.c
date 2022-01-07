
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_fd; int wfds; int rfds; } ;
typedef TYPE_1__ php_cli_server_poller ;


 int FD_ZERO (int *) ;
 int SUCCESS ;

__attribute__((used)) static int php_cli_server_poller_ctor(php_cli_server_poller *poller)
{
 FD_ZERO(&poller->rfds);
 FD_ZERO(&poller->wfds);
 poller->max_fd = -1;
 return SUCCESS;
}
