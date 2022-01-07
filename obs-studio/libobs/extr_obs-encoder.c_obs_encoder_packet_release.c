
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoder_packet {scalar_t__ data; } ;


 int bfree (long*) ;
 int memset (struct encoder_packet*,int ,int) ;
 scalar_t__ os_atomic_dec_long (long*) ;

void obs_encoder_packet_release(struct encoder_packet *pkt)
{
 if (!pkt)
  return;

 if (pkt->data) {
  long *p_refs = ((long *)pkt->data) - 1;
  if (os_atomic_dec_long(p_refs) == 0)
   bfree(p_refs);
 }

 memset(pkt, 0, sizeof(struct encoder_packet));
}
