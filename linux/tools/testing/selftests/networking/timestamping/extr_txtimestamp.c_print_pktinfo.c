
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa ;
typedef int da ;


 int INET6_ADDRSTRLEN ;
 int fprintf (int ,char*,int,char*,char*) ;
 char* inet_ntop (int,void*,char*,int) ;
 int stderr ;

__attribute__((used)) static void print_pktinfo(int family, int ifindex, void *saddr, void *daddr)
{
 char sa[INET6_ADDRSTRLEN], da[INET6_ADDRSTRLEN];

 fprintf(stderr, "         pktinfo: ifindex=%u src=%s dst=%s\n",
  ifindex,
  saddr ? inet_ntop(family, saddr, sa, sizeof(sa)) : "unknown",
  daddr ? inet_ntop(family, daddr, da, sizeof(da)) : "unknown");
}
