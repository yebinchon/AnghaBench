
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync_type; int * opaque; void* sync_clock; } ;
struct ff_demuxer {TYPE_1__ clock; int * video_decoder; int * audio_decoder; } ;





 void* ff_decoder_clock ;
 void* ff_external_clock ;

__attribute__((used)) static bool set_clock_sync_type(struct ff_demuxer *demuxer)
{
 if (demuxer->video_decoder == ((void*)0)) {
  if (demuxer->clock.sync_type == 128)
   demuxer->clock.sync_type = 130;
 }

 if (demuxer->audio_decoder == ((void*)0)) {
  if (demuxer->clock.sync_type == 130)
   demuxer->clock.sync_type = 128;
 }

 switch (demuxer->clock.sync_type) {
 case 130:
  demuxer->clock.sync_clock = ff_decoder_clock;
  demuxer->clock.opaque = demuxer->audio_decoder;
  break;
 case 128:
  demuxer->clock.sync_clock = ff_decoder_clock;
  demuxer->clock.opaque = demuxer->video_decoder;
  break;
 case 129:
  demuxer->clock.sync_clock = ff_external_clock;
  demuxer->clock.opaque = ((void*)0);
  break;
 default:
  return 0;
 }

 return 1;
}
