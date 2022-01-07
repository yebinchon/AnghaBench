
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_port; int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct servent {int s_port; } ;
struct in_addr {unsigned long s_addr; } ;
struct hostent {char* h_name; char** h_addr_list; char* h_addr; int h_length; int h_addrtype; scalar_t__ h_aliases; } ;
typedef int sin ;
typedef int SOCKET ;


 int AF_INET ;
 int INVALID_SOCKET ;
 int SOCK_STREAM ;
 int WSAGetLastError () ;
 int bcopy (char*,char*,int) ;
 int closesocket (int ) ;
 scalar_t__ connect (int ,struct sockaddr*,int) ;
 int fprintf (int ,char*,...) ;
 struct hostent* gethostbyname (char*) ;
 struct servent* getservbyname (char*,char*) ;
 unsigned long inet_addr (char*) ;
 scalar_t__ isdigit (char) ;
 int isprint (char) ;
 int isspace (char) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int recv (int ,char*,int,int ) ;
 char* rindex (char*,char) ;
 int send (int ,char*,int,int ) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strlen (char*) ;

void
netfinger(char *name)
{
 extern int lflag;
 char c, lastc;
 struct in_addr defaddr;
 struct hostent *hp, def;
 struct servent *sp;
 struct sockaddr_in sin;
 SOCKET s;
 char *alist[1], *host;


 if (!(host = rindex(name, '@')))
  return;

 *host++ = '\0';
 if (isdigit(*host) && (defaddr.s_addr = inet_addr(host)) != (unsigned long)-1) {
  def.h_name = host;
  def.h_addr_list = alist;
  def.h_addr = (char *)&defaddr;
  def.h_length = sizeof(struct in_addr);
  def.h_addrtype = AF_INET;
  def.h_aliases = 0;
  hp = &def;
 } else if (!(hp = gethostbyname(host))) {
  (void)fprintf(stderr,
      "finger: unknown host: %s\n", host);
  return;
 }
 if (!(sp = getservbyname("finger", "tcp"))) {
  (void)fprintf(stderr, "finger: tcp/finger: unknown service\n");
  return;
 }
 sin.sin_family = hp->h_addrtype;
 bcopy(hp->h_addr, (char *)&sin.sin_addr, hp->h_length);
 sin.sin_port = sp->s_port;
 if ((s = socket(hp->h_addrtype, SOCK_STREAM, 0)) == INVALID_SOCKET) {
  perror("finger: socket");
  return;
 }


 (void)printf("[%s]\n", hp->h_name);
 if (connect(s, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
  fprintf(stderr, "finger: connect rc = %d", WSAGetLastError());
  (void)closesocket(s);
  return;
 }


 if (lflag)
  send(s, "/W ", 3, 0);

 send(s, name, strlen(name), 0);
 send(s, "\r\n", 2, 0);
 lastc = 0;
 while (recv(s, &c, 1, 0) == 1) {
  c &= 0x7f;
  if (c == 0x0d) {
   if (lastc == '\r')
    continue;
   c = '\n';
   lastc = '\r';
  } else {
   if (!isprint(c) && !isspace(c))
    c |= 0x40;
   if (lastc != '\r' || c != '\n')
    lastc = c;
   else {
    lastc = '\n';
    continue;
   }
  }
  putchar(c);
 }
 if (lastc != '\n')
  putchar('\n');
 putchar('\n');
 (void)closesocket(s);
}
