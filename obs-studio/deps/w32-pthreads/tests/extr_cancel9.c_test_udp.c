
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int WSADATA ;
typedef int WORD ;
typedef scalar_t__ SOCKET ;


 int AF_INET ;
 int INADDR_ANY ;
 int MAKEWORD (int,int) ;
 int PTHREAD_CANCEL_ASYNCHRONOUS ;
 int PTHREAD_CANCEL_ENABLE ;
 int SOCK_DGRAM ;
 int WSACleanup () ;
 scalar_t__ WSAStartup (int ,int *) ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int closesocket (scalar_t__) ;
 int exit (int) ;
 int htons (int) ;
 int printf (char*) ;
 int pthread_setcancelstate (int ,int *) ;
 int pthread_setcanceltype (int ,int *) ;
 int recvfrom (scalar_t__,char*,int,int ,struct sockaddr*,int*) ;
 scalar_t__ socket (int ,int ,int ) ;

void *
test_udp (void *arg)
{
  struct sockaddr_in serverAddress;
  struct sockaddr_in clientAddress;
  SOCKET UDPSocket;
  int addr_len;
  int nbyte, bytes;
  char buffer[4096];
  WORD wsaVersion = MAKEWORD (2, 2);
  WSADATA wsaData;

  pthread_setcancelstate (PTHREAD_CANCEL_ENABLE, ((void*)0));
  pthread_setcanceltype (PTHREAD_CANCEL_ASYNCHRONOUS, ((void*)0));

  if (WSAStartup (wsaVersion, &wsaData) != 0)
    {
      return ((void*)0);
    }

  UDPSocket = socket (AF_INET, SOCK_DGRAM, 0);
  if ((int)UDPSocket == -1)
    {
      printf ("Server: socket ERROR \n");
      exit (-1);
    }

  serverAddress.sin_family = AF_INET;
  serverAddress.sin_addr.s_addr = INADDR_ANY;
  serverAddress.sin_port = htons (9003);

  if (bind
      (UDPSocket, (struct sockaddr *) &serverAddress,
       sizeof (struct sockaddr_in)))
    {
      printf ("Server: ERROR can't bind UDPSocket");
      exit (-1);
    }

  addr_len = sizeof (struct sockaddr);

  nbyte = 512;

  bytes =
    recvfrom (UDPSocket, (char *) buffer, nbyte, 0,
       (struct sockaddr *) &clientAddress, &addr_len);

  closesocket (UDPSocket);
  WSACleanup ();

  return ((void*)0);
}
