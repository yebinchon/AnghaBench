
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int sin6_family; } ;
struct TYPE_4__ {int xp_addrlen; TYPE_2__ xp_raddr; } ;
typedef TYPE_1__ SVCXPRT ;




 int AF_UNSPEC ;
 int memcpy (TYPE_2__*,struct sockaddr_storage const*,int) ;

void
__xprt_set_raddr(SVCXPRT *xprt, const struct sockaddr_storage *ss)
{
 switch (ss->ss_family) {
 case 128:
  memcpy(&xprt->xp_raddr, ss, sizeof(struct sockaddr_in6));
  xprt->xp_addrlen = sizeof (struct sockaddr_in6);
  break;
 case 129:
  memcpy(&xprt->xp_raddr, ss, sizeof(struct sockaddr_in));
  xprt->xp_addrlen = sizeof (struct sockaddr_in);
  break;
 default:
  xprt->xp_raddr.sin6_family = AF_UNSPEC;
  xprt->xp_addrlen = sizeof (struct sockaddr);
  break;
 }
}
