
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBADF ;
 int* close_fds ;
 int close_fds_cnt ;
 scalar_t__ errno ;
 int init_l ;
 int* req_pipefd ;
 int* resp_pipefd ;
 int true_close (int) ;

int close(int fd) {
 if(!init_l) {
  if(close_fds_cnt>=(sizeof close_fds/sizeof close_fds[0])) goto err;
  close_fds[close_fds_cnt++] = fd;
  errno = 0;
  return 0;
 }

 if(fd != req_pipefd[0] && fd != req_pipefd[1] &&
    fd != resp_pipefd[0] && fd != resp_pipefd[1]) {
  return true_close(fd);
 }
 err:
 errno = EBADF;
 return -1;
}
