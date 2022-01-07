
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_1; int member_0; } ;
struct kevent {int dummy; } ;
typedef int eventfd_t ;


 int assert (int) ;
 int eventfd_read (int,int *) ;
 int kevent (int,int *,int ,struct kevent*,int,struct timespec*) ;

void efd_clear(int fd) {

  eventfd_t efd_cnt;
  eventfd_read(fd, &efd_cnt);






}
