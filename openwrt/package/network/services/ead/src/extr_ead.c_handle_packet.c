
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct pcap_pkthdr {int len; } ;
struct TYPE_4__ {scalar_t__ magic; int nid; int len; } ;
struct TYPE_3__ {int ether_type; int ether_dhost; } ;
struct ead_packet {scalar_t__ proto; int destport; TYPE_2__ msg; TYPE_1__ eh; } ;


 int EAD_MAGIC ;
 int EAD_PORT ;
 int ETHERTYPE_IP ;
 scalar_t__ UIP_PROTO_UDP ;
 scalar_t__ htonl (int ) ;
 int htons (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int nid ;
 scalar_t__ ntohl (int ) ;
 int parse_message (struct ead_packet*,scalar_t__) ;

__attribute__((used)) static void
handle_packet(u_char *user, const struct pcap_pkthdr *h, const u_char *bytes)
{
 struct ead_packet *pkt = (struct ead_packet *) bytes;

 if (h->len < sizeof(struct ead_packet))
  return;

 if (pkt->eh.ether_type != htons(ETHERTYPE_IP))
  return;

 if (memcmp(pkt->eh.ether_dhost, "\xff\xff\xff\xff\xff\xff", 6) != 0)
  return;

 if (pkt->proto != UIP_PROTO_UDP)
  return;

 if (pkt->destport != htons(EAD_PORT))
  return;

 if (pkt->msg.magic != htonl(EAD_MAGIC))
  return;

 if (h->len < sizeof(struct ead_packet) + ntohl(pkt->msg.len))
  return;

 if ((pkt->msg.nid != 0xffff) &&
  (pkt->msg.nid != htons(nid)))
  return;

 parse_message(pkt, h->len);
}
