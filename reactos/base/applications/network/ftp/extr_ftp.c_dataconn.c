
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int from ;


 int WSAGetLastError () ;
 int accept (int,struct sockaddr*,int*) ;
 scalar_t__ closesocket (int) ;
 int data ;
 scalar_t__ fflush (int ) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ passivemode ;
 int perror (char*) ;
 int stdout ;

int dataconn(const char *mode)
{
 struct sockaddr_in from;
 int s, fromlen = sizeof (from);

 if (passivemode)
  return (data);

 s = accept(data, (struct sockaddr *) &from, &fromlen);
 if (s < 0) {
  perror("ftp: accept");
  (void) closesocket(data), data = -1;
  return 0;
 }
 if(closesocket(data)) {
  int iret=WSAGetLastError ();
  fprintf(stdout,"Error closing socket(%d)\n",iret);
  (void) fflush(stdout);
 }

 data = s;
 return (data);
}
