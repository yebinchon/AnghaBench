
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ check; void* len; void* source; void* dest; } ;
struct iphdr {int ttl; int ihl; int version; scalar_t__ check; void* tot_len; int protocol; void* daddr; void* saddr; } ;
struct ethhdr {void* h_proto; } ;


 size_t ETH_P_IP ;
 scalar_t__ INADDR_LOOPBACK ;
 int IPPROTO_UDP ;
 void* htonl (scalar_t__) ;
 void* htons (size_t) ;
 int memset (void*,char,size_t) ;

__attribute__((used)) static void build_packet(void *buffer, size_t blen, char payload_char)
{
 struct udphdr *udph;
 struct ethhdr *eth;
 struct iphdr *iph;
 size_t off = 0;

 memset(buffer, 0, blen);

 eth = buffer;
 eth->h_proto = htons(ETH_P_IP);

 off += sizeof(*eth);
 iph = buffer + off;
 iph->ttl = 8;
 iph->ihl = 5;
 iph->version = 4;
 iph->saddr = htonl(INADDR_LOOPBACK);
 iph->daddr = htonl(INADDR_LOOPBACK + 1);
 iph->protocol = IPPROTO_UDP;
 iph->tot_len = htons(blen - off);
 iph->check = 0;

 off += sizeof(*iph);
 udph = buffer + off;
 udph->dest = htons(8000);
 udph->source = htons(8001);
 udph->len = htons(blen - off);
 udph->check = 0;

 off += sizeof(*udph);
 memset(buffer + off, payload_char, blen - off);
}
