
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int type; int id; scalar_t__ checksum; scalar_t__ length; int leader; } ;
typedef TYPE_1__ kd_packet_t ;


 int KD_E_IOERR ;
 int KD_E_OK ;
 int KD_PACKET_CTRL ;
 scalar_t__ iob_write (void*,int *,int) ;

int kd_send_ctrl_packet(void *fp, const uint32_t type, const uint32_t id) {
 kd_packet_t pkt;

 pkt.leader = KD_PACKET_CTRL;
 pkt.length = 0;
 pkt.checksum = 0;
 pkt.id = id;
 pkt.type = type;

 if (iob_write (fp, (uint8_t *) &pkt, sizeof(kd_packet_t)) < 0) {
  return KD_E_IOERR;
 }

 return KD_E_OK;
}
