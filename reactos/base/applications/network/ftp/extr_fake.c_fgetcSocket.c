
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int EOF ;
 int ERROR ;
 int SOCKET_ERROR ;
 int recv (int,char*,int,int ) ;

int fgetcSocket(int s)
{
   static int index = 0;
   static int total = 0;
   static char buffer[4096];

   if (index == total)
     {
       index = 0;
       total = recv(s, buffer, sizeof(buffer), 0);

       if (total == SOCKET_ERROR)
     {
       total = 0;
       return ERROR;
     }

       if (total == 0)
     return EOF;
     }
   return buffer[index++];
}
