
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int port ;
typedef int ip ;
typedef int coap_tid_t ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ coap_packet_t ;
typedef int* coap_key_t ;


 int coap_hash (unsigned char const*,int,int*) ;
 int memset (int*,int ,int) ;

void coap_transaction_id(const uint32_t ip, const uint32_t port, const coap_packet_t *pkt, coap_tid_t *id) {
  coap_key_t h;
  memset(h, 0, sizeof(coap_key_t));


  coap_hash((const unsigned char *)&(port), sizeof(port), h);
  coap_hash((const unsigned char *)&(ip), sizeof(ip), h);
  coap_hash((const unsigned char *)(pkt->hdr.id), sizeof(pkt->hdr.id), h);
  *id = ((h[0] << 8) | h[1]) ^ ((h[2] << 8) | h[3]);
}
