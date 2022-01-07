
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
typedef int fd_set ;


 scalar_t__ CancelRequested ;
 scalar_t__ EINTR ;
 int SOCKET_ERROR ;
 scalar_t__ WSAEINTR ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
select_loop(int maxFd, fd_set *workerset, bool *aborting)
{
 int i;
 fd_set saveSet = *workerset;

 if (CancelRequested)
 {
  *aborting = 1;
  return -1;
 }
 else
  *aborting = 0;

 for (;;)
 {




  struct timeval *tvp;





  tvp = ((void*)0);


  *workerset = saveSet;
  i = select(maxFd + 1, workerset, ((void*)0), ((void*)0), tvp);
  if (i < 0 && errno == EINTR)
   continue;
  if (i < 0 || CancelRequested)
   *aborting = 1;
  if (i == 0)
   continue;
  break;
 }

 return i;
}
