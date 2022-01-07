
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ leader; int length; scalar_t__ checksum; int id; } ;
typedef TYPE_1__ kd_packet_t ;


 int KD_E_IOERR ;
 int KD_E_MALFORMED ;
 int KD_E_OK ;
 scalar_t__ KD_PACKET_DATA ;
 int KD_PACKET_TYPE_ACKNOWLEDGE ;
 int eprintf (char*,...) ;
 int free (int*) ;
 scalar_t__ iob_read (void*,int*,int) ;
 scalar_t__ kd_data_checksum (int*,int) ;
 int kd_packet_is_valid (TYPE_1__*) ;
 int kd_send_ctrl_packet (void*,int ,int) ;
 int* malloc (int) ;
 int memcpy (int*,TYPE_1__*,int) ;
 int printf (char*) ;

int kd_read_packet(void *fp, kd_packet_t **p) {
 kd_packet_t pkt;
 uint8_t *buf;

 *p = ((void*)0);

 if (iob_read (fp, (uint8_t *) &pkt, sizeof (kd_packet_t)) <= 0) {
  return KD_E_IOERR;
 }

 if (!kd_packet_is_valid (&pkt)) {
  eprintf ("invalid leader %08x\n", pkt.leader);
  return KD_E_MALFORMED;
 }

 buf = malloc (sizeof (kd_packet_t) + pkt.length);
 if (!buf) {
  return KD_E_IOERR;
 }
 memcpy (buf, &pkt, sizeof(kd_packet_t));

 if (pkt.length) {
  iob_read (fp, (uint8_t *) buf + sizeof(kd_packet_t), pkt.length);
 }

 if (pkt.checksum != kd_data_checksum (buf + sizeof(kd_packet_t), pkt.length)) {
  eprintf ("Checksum mismatch!\n");
  free (buf);
  return KD_E_MALFORMED;
 }

 if (pkt.leader == KD_PACKET_DATA) {
  uint8_t trailer;
  iob_read (fp, (uint8_t *) &trailer, 1);

  if (trailer != 0xAA) {
   printf ("Missing trailer 0xAA\n");
   free (buf);
   return KD_E_MALFORMED;
  }

  kd_send_ctrl_packet (fp, KD_PACKET_TYPE_ACKNOWLEDGE, ((kd_packet_t *) buf)->id & ~(0x800));
 }

 *p = (kd_packet_t *) buf;

 return KD_E_OK;
}
