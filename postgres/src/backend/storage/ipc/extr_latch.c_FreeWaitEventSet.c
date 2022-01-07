
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nevents; int * handles; TYPE_2__* events; int epoll_fd; } ;
typedef TYPE_1__ WaitEventSet ;
struct TYPE_6__ {int events; int pos; int fd; } ;
typedef TYPE_2__ WaitEvent ;


 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WSACloseEvent (int ) ;
 int WSAEventSelect (int ,int *,int ) ;
 int close (int ) ;
 int pfree (TYPE_1__*) ;

void
FreeWaitEventSet(WaitEventSet *set)
{
 pfree(set);
}
