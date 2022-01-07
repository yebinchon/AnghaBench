
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct addrinfo {TYPE_1__* ai_addr; struct addrinfo* ai_next; } ;
typedef int remote_hostname ;
struct TYPE_9__ {scalar_t__ ss_family; } ;
struct TYPE_7__ {TYPE_4__ addr; int salen; } ;
struct TYPE_8__ {int remote_hostname_resolv; int remote_hostname_errcode; TYPE_2__ raddr; int remote_hostname; } ;
typedef TYPE_3__ hbaPort ;
struct TYPE_6__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int DEBUG2 ;
 int NI_MAXHOST ;
 int NI_NAMEREQD ;
 int elog (int ,char*,char const*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (int ,int *,int *,struct addrinfo**) ;
 int hostname_match (char const*,int ) ;
 scalar_t__ ipv4eq (struct sockaddr_in*,struct sockaddr_in*) ;
 scalar_t__ ipv6eq (struct sockaddr_in6*,struct sockaddr_in6*) ;
 int pg_getnameinfo_all (TYPE_4__*,int ,char*,int,int *,int ,int ) ;
 int pstrdup (char*) ;

__attribute__((used)) static bool
check_hostname(hbaPort *port, const char *hostname)
{
 struct addrinfo *gai_result,
      *gai;
 int ret;
 bool found;


 if (port->remote_hostname_resolv < 0)
  return 0;


 if (!port->remote_hostname)
 {
  char remote_hostname[NI_MAXHOST];

  ret = pg_getnameinfo_all(&port->raddr.addr, port->raddr.salen,
         remote_hostname, sizeof(remote_hostname),
         ((void*)0), 0,
         NI_NAMEREQD);
  if (ret != 0)
  {

   port->remote_hostname_resolv = -2;
   port->remote_hostname_errcode = ret;
   return 0;
  }

  port->remote_hostname = pstrdup(remote_hostname);
 }


 if (!hostname_match(hostname, port->remote_hostname))
  return 0;


 if (port->remote_hostname_resolv == +1)
  return 1;


 ret = getaddrinfo(port->remote_hostname, ((void*)0), ((void*)0), &gai_result);
 if (ret != 0)
 {

  port->remote_hostname_resolv = -2;
  port->remote_hostname_errcode = ret;
  return 0;
 }

 found = 0;
 for (gai = gai_result; gai; gai = gai->ai_next)
 {
  if (gai->ai_addr->sa_family == port->raddr.addr.ss_family)
  {
   if (gai->ai_addr->sa_family == AF_INET)
   {
    if (ipv4eq((struct sockaddr_in *) gai->ai_addr,
         (struct sockaddr_in *) &port->raddr.addr))
    {
     found = 1;
     break;
    }
   }
  }
 }

 if (gai_result)
  freeaddrinfo(gai_result);

 if (!found)
  elog(DEBUG2, "pg_hba.conf host name \"%s\" rejected because address resolution did not return a match with IP address of client",
    hostname);

 port->remote_hostname_resolv = found ? +1 : -1;

 return found;
}
