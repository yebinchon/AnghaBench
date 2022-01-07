
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iphdr {int ihl; int version; int ttl; int protocol; int daddr; int saddr; } ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;


 int IPPROTO_UDP ;
 TYPE_2__ daddr ;
 int memset (struct iphdr*,int ,int) ;

__attribute__((used)) static int fill_header_ipv4(void *p)
{
 struct iphdr *iph = p;

 memset(iph, 0, sizeof(*iph));

 iph->ihl = 5;
 iph->version = 4;
 iph->ttl = 2;
 iph->saddr = daddr.sin_addr.s_addr;
 iph->daddr = daddr.sin_addr.s_addr;
 iph->protocol = IPPROTO_UDP;



 return sizeof(*iph);
}
