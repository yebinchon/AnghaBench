
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 scalar_t__ EINTR ;
 int SOCKET_ERROR ;
 scalar_t__ WSAEINTR ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 int select (int,int *,int *,int *,int *) ;

__attribute__((used)) static int
select_loop(int maxFd, fd_set *workerset)
{
 int i;
 fd_set saveSet = *workerset;

 for (;;)
 {
  *workerset = saveSet;
  i = select(maxFd + 1, workerset, ((void*)0), ((void*)0), ((void*)0));


  if (i < 0 && errno == EINTR)
   continue;




  break;
 }

 return i;
}
