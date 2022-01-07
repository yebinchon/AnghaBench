
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SOCKET_ERROR ;
 int WSAGetLastError () ;
 int fprintf (int ,char*,int) ;
 scalar_t__ send (int,char*,int,int ) ;
 int stdout ;

int fputcSocket(int s, char putChar)
{
   char buffer[2];

   buffer[0] = putChar;
   buffer[1] = '\0';

   if(SOCKET_ERROR==send(s, buffer, 1, 0)) {
       int iret=WSAGetLastError ();
       fprintf(stdout,"fputcSocket: %d\n",iret);
       return 0;
   }
   else {
    return putChar;
   }
}
