
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int dummy; } ;
typedef int nfds_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int gettimeofday (struct timeval*,int *) ;
 int poll (struct pollfd*,int ,int) ;

__attribute__((used)) static int poll_retry(struct pollfd *fds, nfds_t nfsd, int timeout) {
 int ret;
 int time_remain = timeout;
 int time_elapsed = 0;

 struct timeval start_time;
 struct timeval tv;

 gettimeofday(&start_time, ((void*)0));

 do {

  ret = poll(fds, nfsd, time_remain);
  gettimeofday(&tv, ((void*)0));
  time_elapsed = ((tv.tv_sec - start_time.tv_sec) * 1000 + (tv.tv_usec - start_time.tv_usec) / 1000);

  time_remain = timeout - time_elapsed;
 } while(ret == -1 && errno == EINTR && time_remain > 0);



 return ret;
}
