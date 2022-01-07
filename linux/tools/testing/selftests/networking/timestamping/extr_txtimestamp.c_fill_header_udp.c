
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ check; void* len; void* dest; void* source; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ cfg_payload_len ;
 scalar_t__ dest_port ;
 scalar_t__ get_udp_csum (struct udphdr*,int) ;
 void* ntohs (scalar_t__) ;

__attribute__((used)) static void fill_header_udp(void *p, bool is_ipv4)
{
 struct udphdr *udph = p;

 udph->source = ntohs(dest_port + 1);
 udph->dest = ntohs(dest_port);
 udph->len = ntohs(sizeof(*udph) + cfg_payload_len);
 udph->check = 0;

 udph->check = get_udp_csum(udph, is_ipv4 ? sizeof(struct in_addr) :
          sizeof(struct in6_addr));
}
