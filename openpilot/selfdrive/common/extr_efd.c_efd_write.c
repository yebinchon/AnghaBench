
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_1; int member_0; } ;
struct kevent {int dummy; } ;


 int EVENT_IDENT ;
 int EVFILT_USER ;
 int EV_SET (struct kevent*,int ,int ,int ,int ,int ,int *) ;
 int NOTE_TRIGGER ;
 int assert (int) ;
 int eventfd_write (int,int) ;
 int kevent (int,struct kevent*,int,int *,int ,struct timespec*) ;

void efd_write(int fd) {

  eventfd_write(fd, 1);
}
