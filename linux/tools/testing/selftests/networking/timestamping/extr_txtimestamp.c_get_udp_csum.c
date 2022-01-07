
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct udphdr {scalar_t__ len; } ;


 int IPPROTO_UDP ;
 int get_ip_csum (void const*,unsigned long,unsigned long) ;
 unsigned long htons (int ) ;
 int ntohs (scalar_t__) ;

__attribute__((used)) static uint16_t get_udp_csum(const struct udphdr *udph, int alen)
{
 unsigned long pseudo_sum, csum_len;
 const void *csum_start = udph;

 pseudo_sum = htons(IPPROTO_UDP);
 pseudo_sum += udph->len;


 csum_start -= alen * 2;
 csum_len = ntohs(udph->len) + alen * 2;

 return get_ip_csum(csum_start, csum_len >> 1, pseudo_sum);
}
