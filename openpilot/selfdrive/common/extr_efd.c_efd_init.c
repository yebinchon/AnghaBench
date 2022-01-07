
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_1; int member_0; } ;
struct kevent {int dummy; } ;


 int EFD_CLOEXEC ;
 int EVENT_IDENT ;
 int EVFILT_USER ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_SET (struct kevent*,int ,int ,int,int ,int ,int *) ;
 int assert (int) ;
 int eventfd (int ,int ) ;
 int kevent (int,struct kevent*,int,int *,int ,struct timespec*) ;
 int kqueue () ;

int efd_init() {

  return eventfd(0, EFD_CLOEXEC);
}
