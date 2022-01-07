
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_packet {int base; int * clock; } ;
struct ff_decoder {int * clock; } ;


 int av_free_packet (int *) ;
 int ff_clock_release (int **) ;

__attribute__((used)) static bool handle_reset_packet(struct ff_decoder *decoder,
                                struct ff_packet *packet)
{
 if (decoder->clock != ((void*)0))
  ff_clock_release(&decoder->clock);
 decoder->clock = packet->clock;
 av_free_packet(&packet->base);

 return 1;
}
