
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct addrinfo {int ai_family; int ai_addrlen; scalar_t__ ai_addr; struct addrinfo* ai_next; int ai_socktype; int ai_flags; } ;
typedef int portNumberStr ;
typedef scalar_t__ pgsocket ;
typedef int one ;
typedef int hint ;
typedef int familyDescBuf ;
typedef int addrBuf ;





 int AI_PASSIVE ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 scalar_t__ IS_AF_UNIX (int) ;
 int LOG ;
 scalar_t__ Lock_AF_UNIX (char*,char*) ;
 int MAXPGPATH ;
 int MaxBackends ;
 int MemSet (struct addrinfo*,int ,int) ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 scalar_t__ PGINVALID_SOCKET ;
 int PG_SOMAXCONN ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int STATUS_ERROR ;
 scalar_t__ STATUS_OK ;
 scalar_t__ Setup_AF_UNIX (char*) ;
 int UNIXSOCK_PATH (char*,unsigned short,char*) ;
 int UNIXSOCK_PATH_BUFLEN ;
 char* _ (char*) ;
 int bind (scalar_t__,scalar_t__,int ) ;
 int closesocket (scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode_for_socket_access () ;
 int errhint (char*,int,...) ;
 int errmsg (char*,...) ;
 int gai_strerror (int) ;
 int listen (scalar_t__,int) ;
 int pg_freeaddrinfo_all (int,struct addrinfo*) ;
 int pg_getaddrinfo_all (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int pg_getnameinfo_all (struct sockaddr_storage const*,int ,char*,int,int *,int ,int ) ;
 int setsockopt (scalar_t__,int ,int ,char*,int) ;
 int snprintf (char*,int,char*,unsigned short) ;
 scalar_t__ socket (int,int ,int ) ;
 int strlen (char*) ;

int
StreamServerPort(int family, char *hostName, unsigned short portNumber,
     char *unixSocketDir,
     pgsocket ListenSocket[], int MaxListen)
{
 pgsocket fd;
 int err;
 int maxconn;
 int ret;
 char portNumberStr[32];
 const char *familyDesc;
 char familyDescBuf[64];
 const char *addrDesc;
 char addrBuf[NI_MAXHOST];
 char *service;
 struct addrinfo *addrs = ((void*)0),
      *addr;
 struct addrinfo hint;
 int listen_index = 0;
 int added = 0;





 int one = 1;



 MemSet(&hint, 0, sizeof(hint));
 hint.ai_family = family;
 hint.ai_flags = AI_PASSIVE;
 hint.ai_socktype = SOCK_STREAM;
 {
  snprintf(portNumberStr, sizeof(portNumberStr), "%d", portNumber);
  service = portNumberStr;
 }

 ret = pg_getaddrinfo_all(hostName, service, &hint, &addrs);
 if (ret || !addrs)
 {
  if (hostName)
   ereport(LOG,
     (errmsg("could not translate host name \"%s\", service \"%s\" to address: %s",
       hostName, service, gai_strerror(ret))));
  else
   ereport(LOG,
     (errmsg("could not translate service \"%s\" to address: %s",
       service, gai_strerror(ret))));
  if (addrs)
   pg_freeaddrinfo_all(hint.ai_family, addrs);
  return STATUS_ERROR;
 }

 for (addr = addrs; addr; addr = addr->ai_next)
 {
  if (!IS_AF_UNIX(family) && IS_AF_UNIX(addr->ai_family))
  {




   continue;
  }


  for (; listen_index < MaxListen; listen_index++)
  {
   if (ListenSocket[listen_index] == PGINVALID_SOCKET)
    break;
  }
  if (listen_index >= MaxListen)
  {
   ereport(LOG,
     (errmsg("could not bind to all requested addresses: MAXLISTEN (%d) exceeded",
       MaxListen)));
   break;
  }


  switch (addr->ai_family)
  {
   case 130:
    familyDesc = _("IPv4");
    break;
   default:
    snprintf(familyDescBuf, sizeof(familyDescBuf),
       _("unrecognized address family %d"),
       addr->ai_family);
    familyDesc = familyDescBuf;
    break;
  }







  {
   pg_getnameinfo_all((const struct sockaddr_storage *) addr->ai_addr,
          addr->ai_addrlen,
          addrBuf, sizeof(addrBuf),
          ((void*)0), 0,
          NI_NUMERICHOST);
   addrDesc = addrBuf;
  }

  if ((fd = socket(addr->ai_family, SOCK_STREAM, 0)) == PGINVALID_SOCKET)
  {
   ereport(LOG,
     (errcode_for_socket_access(),

      errmsg("could not create %s socket for address \"%s\": %m",
       familyDesc, addrDesc)));
   continue;
  }
  if (!IS_AF_UNIX(addr->ai_family))
  {
   if ((setsockopt(fd, SOL_SOCKET, SO_REUSEADDR,
       (char *) &one, sizeof(one))) == -1)
   {
    ereport(LOG,
      (errcode_for_socket_access(),

       errmsg("setsockopt(SO_REUSEADDR) failed for %s address \"%s\": %m",
        familyDesc, addrDesc)));
    closesocket(fd);
    continue;
   }
  }
  err = bind(fd, addr->ai_addr, addr->ai_addrlen);
  if (err < 0)
  {
   ereport(LOG,
     (errcode_for_socket_access(),

      errmsg("could not bind %s address \"%s\": %m",
       familyDesc, addrDesc),
      (IS_AF_UNIX(addr->ai_family)) ?
      errhint("Is another postmaster already running on port %d?"
        " If not, remove socket file \"%s\" and retry.",
        (int) portNumber, service) :
      errhint("Is another postmaster already running on port %d?"
        " If not, wait a few seconds and retry.",
        (int) portNumber)));
   closesocket(fd);
   continue;
  }
  maxconn = MaxBackends * 2;
  if (maxconn > PG_SOMAXCONN)
   maxconn = PG_SOMAXCONN;

  err = listen(fd, maxconn);
  if (err < 0)
  {
   ereport(LOG,
     (errcode_for_socket_access(),

      errmsg("could not listen on %s address \"%s\": %m",
       familyDesc, addrDesc)));
   closesocket(fd);
   continue;
  }
   ereport(LOG,

     (errmsg("listening on %s address \"%s\", port %d",
       familyDesc, addrDesc, (int) portNumber)));

  ListenSocket[listen_index] = fd;
  added++;
 }

 pg_freeaddrinfo_all(hint.ai_family, addrs);

 if (!added)
  return STATUS_ERROR;

 return STATUS_OK;
}
