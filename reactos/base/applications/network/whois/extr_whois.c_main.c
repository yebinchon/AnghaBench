
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_port; int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct servent {int s_port; } ;
struct hostent {char* h_name; int h_length; int h_addr; int h_addrtype; } ;
typedef int sin ;
typedef int WSADATA ;
typedef int WORD ;
typedef scalar_t__ SOCKET ;


 scalar_t__ INVALID_SOCKET ;
 int MAKEWORD (int,int) ;
 int SOCK_STREAM ;
 int WSAGetLastError () ;
 int WSAStartup (int ,int *) ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int cleanup (int) ;
 scalar_t__ connect (scalar_t__,struct sockaddr*,int) ;
 int fprintf (int ,char*,...) ;
 struct hostent* gethostbyname (char*) ;
 struct servent* getservbyname (char*,char*) ;
 int getwhoisserver (int,char**) ;
 char* host ;
 int memcpy (char*,int ,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ optset ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int recv (scalar_t__,char*,int,int ) ;
 int send (scalar_t__,char*,int,int ) ;
 scalar_t__ socket (int ,int ,int ) ;
 int stderr ;
 int strlen (char*) ;
 int usage () ;

int main(int argc, char **argv)
{
 char ch;
 struct sockaddr_in sin;
 struct hostent *hp;
 struct servent *sp;
 SOCKET s;

 WORD wVersionRequested;
 WSADATA wsaData;
 int err;

 getwhoisserver(argc, argv);
 argc -= optset;
 argv += optset;

    if (!host || !argc)
  usage();


 wVersionRequested = MAKEWORD( 1, 1 );
 err = WSAStartup( wVersionRequested, &wsaData );
 if ( err != 0 )
 {


  perror("whois: WSAStartup failed");
  cleanup(1);
 }

 hp = gethostbyname(host);
 if (hp == ((void*)0)) {
  (void)fprintf(stderr, "whois: %s: ", host);
  cleanup(1);
 }
 host = hp->h_name;

 s = socket(hp->h_addrtype, SOCK_STREAM, 0);
 if (s == INVALID_SOCKET) {
  perror("whois: socket");
  cleanup(1);
 }

 memset( &sin, 0, sizeof(sin));
 sin.sin_family = hp->h_addrtype;
 if (bind(s, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
  perror("whois: bind");
  cleanup(1);
 }

 memcpy((char *)&sin.sin_addr, hp->h_addr, hp->h_length);
 sp = getservbyname("nicname", "tcp");
 if (sp == ((void*)0)) {
  (void)fprintf(stderr, "whois: nicname/tcp: unknown service\n");
  cleanup(1);
 }

 sin.sin_port = sp->s_port;


 (void)printf("[%s]\n", hp->h_name);

 if (connect(s, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
  fprintf(stderr, "whois: connect error = %d\n", WSAGetLastError());
  cleanup(1);
 }





 while (argc-- > 1)
 {

  send(s, *argv, strlen(*argv), 0);
  send(s, " ", 1, 0);
  argv++;
 }

 send(s, *argv, strlen(*argv), 0);
 send(s, "\r\n", 2, 0);


 while (recv(s, &ch, 1, 0) == 1)
  putchar(ch);

 cleanup(0);
 return 0;
}
