
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
typedef int fd_set ;
typedef int SOCKET ;


 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int SOCKET_ERROR ;
 int fprintf (int ,char*) ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 int stderr ;

int checkRecv(SOCKET s)
{
   int testVal;
   fd_set sSet;
   struct timeval timeout;
   timeout.tv_sec = 60;

   FD_ZERO(&sSet);

   FD_SET(s, &sSet);

   testVal = select(0, &sSet, ((void*)0), ((void*)0), &timeout);

   if (testVal == SOCKET_ERROR)
      fprintf(stderr, "Socket Error");

   return testVal;
}
