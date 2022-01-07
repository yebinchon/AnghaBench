
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int sin_port; int sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct hostent {int h_addr; } ;
struct addrinfo {int ai_addrlen; struct addrinfo* ai_next; struct sockaddr* ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int socklen_t ;
typedef int option_value ;
struct TYPE_6__ {int size; int * data; } ;
struct TYPE_5__ {int size; int * data; } ;
typedef int RD_BOOL ;


 int AF_INET ;
 int AF_UNSPEC ;
 int False ;
 int INADDR_NONE ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int STREAM_COUNT ;
 int TCP_CLOSE (int) ;
 int TCP_NODELAY ;
 char* TCP_STRERROR ;
 int True ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int error (char*,char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 TYPE_3__ g_in ;
 TYPE_2__* g_out ;
 int g_reconnect_loop ;
 int g_sock ;
 scalar_t__ g_ssl_server ;
 int g_tcp_port_rdp ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 struct hostent* gethostbyname (char*) ;
 scalar_t__ getsockopt (int,int ,int ,void*,int*) ;
 int htons (int ) ;
 int inet_addr (char*) ;
 int memcpy (TYPE_1__*,int ,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int setsockopt (int,int ,int ,void*,int) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

RD_BOOL
tcp_connect(char *server)
{
 socklen_t option_len;
 uint32 option_value;
 int i;
 struct hostent *nslookup;
 struct sockaddr_in servaddr;

 if ((nslookup = gethostbyname(server)) != ((void*)0))
 {
  memcpy(&servaddr.sin_addr, nslookup->h_addr, sizeof(servaddr.sin_addr));
 }
 else if ((servaddr.sin_addr.s_addr = inet_addr(server)) == INADDR_NONE)
 {
  error("%s: unable to resolve host\n", server);
  return False;
 }

 if ((g_sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
 {
  error("socket: %s\n", TCP_STRERROR);
  return False;
 }

 servaddr.sin_family = AF_INET;
 servaddr.sin_port = htons((uint16) g_tcp_port_rdp);

 if (connect(g_sock, (struct sockaddr *) &servaddr, sizeof(struct sockaddr)) < 0)
 {
  if (!g_reconnect_loop)
   error("connect: %s\n", TCP_STRERROR);

  TCP_CLOSE(g_sock);
  g_sock = -1;
  return False;
 }



 option_value = 1;
 option_len = sizeof(option_value);
 setsockopt(g_sock, IPPROTO_TCP, TCP_NODELAY, (void *) &option_value, option_len);

 if (getsockopt(g_sock, SOL_SOCKET, SO_RCVBUF, (void *) &option_value, &option_len) == 0)
 {
  if (option_value < (1024 * 16))
  {
   option_value = 1024 * 16;
   option_len = sizeof(option_value);
   setsockopt(g_sock, SOL_SOCKET, SO_RCVBUF, (void *) &option_value,
       option_len);
  }
 }

 g_in.size = 4096;
 g_in.data = (uint8 *) xmalloc(g_in.size);

 for (i = 0; i < STREAM_COUNT; i++)
 {
  g_out[i].size = 4096;
  g_out[i].data = (uint8 *) xmalloc(g_out[i].size);
 }





 return True;
}
