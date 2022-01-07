
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pollfd {int dummy; } ;
struct epoll_event {int dummy; } ;
struct TYPE_3__ {int nevents_space; int exit_on_postmaster_death; scalar_t__ epoll_fd; int * handles; int * latch; struct pollfd* pollfds; struct epoll_event* epoll_ret_events; int * events; } ;
typedef TYPE_1__ WaitEventSet ;
typedef int WaitEvent ;
typedef int Size ;
typedef int MemoryContext ;
typedef int * HANDLE ;


 int EPOLL_CLOEXEC ;
 int ERROR ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 scalar_t__ MAXALIGN (int) ;
 scalar_t__ MemoryContextAllocZero (int ,int ) ;
 int StaticAssertStmt (int ,char*) ;
 int * WSA_INVALID_EVENT ;
 int elog (int ,char*) ;
 scalar_t__ epoll_create (int) ;
 scalar_t__ epoll_create1 (int ) ;
 int fcntl (scalar_t__,int ,int ) ;
 int pgwin32_signal_event ;

WaitEventSet *
CreateWaitEventSet(MemoryContext context, int nevents)
{
 WaitEventSet *set;
 char *data;
 Size sz = 0;







 sz += MAXALIGN(sizeof(WaitEventSet));
 sz += MAXALIGN(sizeof(WaitEvent) * nevents);
 data = (char *) MemoryContextAllocZero(context, sz);

 set = (WaitEventSet *) data;
 data += MAXALIGN(sizeof(WaitEventSet));

 set->events = (WaitEvent *) data;
 data += MAXALIGN(sizeof(WaitEvent) * nevents);
 set->latch = ((void*)0);
 set->nevents_space = nevents;
 set->exit_on_postmaster_death = 0;
 return set;
}
