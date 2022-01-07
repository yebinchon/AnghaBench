
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int* ListenSocket ;
 int MAXLISTEN ;
 int PGINVALID_SOCKET ;

__attribute__((used)) static int
initMasks(fd_set *rmask)
{
 int maxsock = -1;
 int i;

 FD_ZERO(rmask);

 for (i = 0; i < MAXLISTEN; i++)
 {
  int fd = ListenSocket[i];

  if (fd == PGINVALID_SOCKET)
   break;
  FD_SET(fd, rmask);

  if (fd > maxsock)
   maxsock = fd;
 }

 return maxsock + 1;
}
