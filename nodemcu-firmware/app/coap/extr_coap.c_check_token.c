
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; int p; } ;
struct TYPE_6__ {TYPE_1__ tok; } ;
typedef TYPE_2__ coap_packet_t ;
struct TYPE_7__ {scalar_t__ len; int p; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 TYPE_3__ the_token ;

int
check_token(coap_packet_t *pkt) {
  return pkt->tok.len == the_token.len && memcmp(pkt->tok.p, the_token.p, the_token.len) == 0;
}
