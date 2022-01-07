
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoder_packet {int dummy; } ;


 int obs_encoder_packet_create_instance (struct encoder_packet*,struct encoder_packet const*) ;

void obs_duplicate_encoder_packet(struct encoder_packet *dst,
      const struct encoder_packet *src)
{
 obs_encoder_packet_create_instance(dst, src);
}
