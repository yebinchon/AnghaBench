
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoder_packet {scalar_t__ size; void* data; } ;


 long* bmalloc (scalar_t__) ;
 int memcpy (void*,void*,scalar_t__) ;

void obs_encoder_packet_create_instance(struct encoder_packet *dst,
     const struct encoder_packet *src)
{
 long *p_refs;

 *dst = *src;
 p_refs = bmalloc(src->size + sizeof(long));
 dst->data = (void *)(p_refs + 1);
 *p_refs = 1;
 memcpy(dst->data, src->data, src->size);
}
