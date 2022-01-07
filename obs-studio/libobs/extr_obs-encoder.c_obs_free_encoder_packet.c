
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoder_packet {int dummy; } ;


 int obs_encoder_packet_release (struct encoder_packet*) ;

void obs_free_encoder_packet(struct encoder_packet *packet)
{
 obs_encoder_packet_release(packet);
}
