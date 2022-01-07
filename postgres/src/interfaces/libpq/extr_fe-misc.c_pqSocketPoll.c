
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct pollfd {int fd; int events; scalar_t__ revents; } ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int POLLERR ;
 int POLLIN ;
 int POLLOUT ;
 int poll (struct pollfd*,int,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
pqSocketPoll(int sock, int forRead, int forWrite, time_t end_time)
{
 fd_set input_mask;
 fd_set output_mask;
 fd_set except_mask;
 struct timeval timeout;
 struct timeval *ptr_timeout;

 if (!forRead && !forWrite)
  return 0;

 FD_ZERO(&input_mask);
 FD_ZERO(&output_mask);
 FD_ZERO(&except_mask);
 if (forRead)
  FD_SET(sock, &input_mask);

 if (forWrite)
  FD_SET(sock, &output_mask);
 FD_SET(sock, &except_mask);


 if (end_time == ((time_t) -1))
  ptr_timeout = ((void*)0);
 else
 {
  time_t now = time(((void*)0));

  if (end_time > now)
   timeout.tv_sec = end_time - now;
  else
   timeout.tv_sec = 0;
  timeout.tv_usec = 0;
  ptr_timeout = &timeout;
 }

 return select(sock + 1, &input_mask, &output_mask,
      &except_mask, ptr_timeout);

}
