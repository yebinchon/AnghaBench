
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int length; int id; int type; scalar_t__ checksum; int leader; } ;
typedef TYPE_1__ kd_packet_t ;


 int KD_E_IOERR ;
 int KD_E_MALFORMED ;
 int KD_E_OK ;
 int const KD_MAX_PAYLOAD ;
 int KD_PACKET_DATA ;
 scalar_t__ iob_write (void*,int *,int const) ;
 scalar_t__ kd_data_checksum (int const*,int const) ;

int kd_send_data_packet(void *fp, const uint32_t type, const uint32_t id, const uint8_t *req,
   const int req_len, const uint8_t *buf, const uint32_t buf_len) {
 kd_packet_t pkt;

 if (req_len + buf_len > KD_MAX_PAYLOAD) {
  return KD_E_MALFORMED;
 }




 pkt.leader = KD_PACKET_DATA;
 pkt.length = req_len + buf_len;
 pkt.checksum = kd_data_checksum (req, req_len) +
         kd_data_checksum (buf, buf_len);
 pkt.id = id;
 pkt.type = type;

 if (iob_write (fp, (uint8_t *) &pkt, sizeof(kd_packet_t)) < 0) {
  return KD_E_IOERR;
 }

 if (iob_write (fp, (uint8_t *) req, req_len) < 0) {
  return KD_E_IOERR;
 }

 if (buf && iob_write (fp, (uint8_t *) buf, buf_len) < 0) {
  return KD_E_IOERR;
 }

 if (iob_write (fp, (uint8_t *) "\xAA", 1) < 0) {
  return KD_E_IOERR;
 }

 return KD_E_OK;
}
