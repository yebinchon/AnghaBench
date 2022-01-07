
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_4__ {int wfds; int rfds; } ;
struct TYPE_5__ {TYPE_1__ active; scalar_t__ max_fd; int wfds; int rfds; } ;
typedef TYPE_2__ php_cli_server_poller ;


 int memmove (int *,int *,int) ;
 int php_select (scalar_t__,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int php_cli_server_poller_poll(php_cli_server_poller *poller, struct timeval *tv)
{
 memmove(&poller->active.rfds, &poller->rfds, sizeof(poller->rfds));
 memmove(&poller->active.wfds, &poller->wfds, sizeof(poller->wfds));
 return php_select(poller->max_fd + 1, &poller->active.rfds, &poller->active.wfds, ((void*)0), tv);
}
