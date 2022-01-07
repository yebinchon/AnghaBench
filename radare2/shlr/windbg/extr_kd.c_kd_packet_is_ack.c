
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ leader; scalar_t__ type; } ;
typedef TYPE_1__ kd_packet_t ;


 scalar_t__ KD_PACKET_CTRL ;
 scalar_t__ KD_PACKET_TYPE_ACKNOWLEDGE ;

int kd_packet_is_ack(const kd_packet_t *p) {
 return p->leader == KD_PACKET_CTRL && p->type == KD_PACKET_TYPE_ACKNOWLEDGE;
}
