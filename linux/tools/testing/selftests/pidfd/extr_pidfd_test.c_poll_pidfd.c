
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct epoll_event {int events; TYPE_1__ data; } ;


 int EPOLLIN ;
 int EPOLL_CLOEXEC ;
 int EPOLL_CTL_ADD ;
 int MAX_EVENTS ;
 int close (int) ;
 int epoll_create1 (int ) ;
 scalar_t__ epoll_ctl (int,int ,int,struct epoll_event*) ;
 int epoll_wait (int,struct epoll_event*,int,int) ;
 int errno ;
 int ksft_exit_fail_msg (char*,char const*,char const*,...) ;

__attribute__((used)) static void poll_pidfd(const char *test_name, int pidfd)
{
 int c;
 int epoll_fd = epoll_create1(EPOLL_CLOEXEC);
 struct epoll_event event, events[MAX_EVENTS];

 if (epoll_fd == -1)
  ksft_exit_fail_msg("%s test: Failed to create epoll file descriptor "
       "(errno %d)\n",
       test_name, errno);

 event.events = EPOLLIN;
 event.data.fd = pidfd;

 if (epoll_ctl(epoll_fd, EPOLL_CTL_ADD, pidfd, &event)) {
  ksft_exit_fail_msg("%s test: Failed to add epoll file descriptor "
       "(errno %d)\n",
       test_name, errno);
 }

 c = epoll_wait(epoll_fd, events, MAX_EVENTS, 5000);
 if (c != 1 || !(events[0].events & EPOLLIN))
  ksft_exit_fail_msg("%s test: Unexpected epoll_wait result (c=%d, events=%x) ",
       "(errno %d)\n",
       test_name, c, events[0].events, errno);

 close(epoll_fd);
 return;

}
