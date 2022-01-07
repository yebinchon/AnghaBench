
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct ipv6hdr {int version; int hop_limit; int daddr; int saddr; int nexthdr; int payload_len; } ;
struct TYPE_2__ {int sin6_addr; } ;


 int IPPROTO_UDP ;
 scalar_t__ cfg_payload_len ;
 TYPE_1__ daddr6 ;
 int htons (scalar_t__) ;
 int memset (struct ipv6hdr*,int ,int) ;

__attribute__((used)) static int fill_header_ipv6(void *p)
{
 struct ipv6hdr *ip6h = p;

 memset(ip6h, 0, sizeof(*ip6h));

 ip6h->version = 6;
 ip6h->payload_len = htons(sizeof(struct udphdr) + cfg_payload_len);
 ip6h->nexthdr = IPPROTO_UDP;
 ip6h->hop_limit = 64;

 ip6h->saddr = daddr6.sin6_addr;
 ip6h->daddr = daddr6.sin6_addr;



 return sizeof(*ip6h);
}
