
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoder_packet {scalar_t__ data; } ;


 int os_atomic_inc_long (long*) ;

void obs_encoder_packet_ref(struct encoder_packet *dst,
       struct encoder_packet *src)
{
 if (!src)
  return;

 if (src->data) {
  long *p_refs = ((long *)src->data) - 1;
  os_atomic_inc_long(p_refs);
 }

 *dst = *src;
}
