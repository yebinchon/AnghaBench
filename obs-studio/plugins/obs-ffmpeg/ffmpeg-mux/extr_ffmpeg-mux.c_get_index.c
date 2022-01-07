
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ffmpeg_mux {int num_audio_streams; TYPE_2__** audio_streams; TYPE_1__* video_stream; } ;
struct ffm_packet_info {scalar_t__ type; size_t index; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int id; } ;


 scalar_t__ FFM_PACKET_VIDEO ;

__attribute__((used)) static inline int get_index(struct ffmpeg_mux *ffm,
       struct ffm_packet_info *info)
{
 if (info->type == FFM_PACKET_VIDEO) {
  if (ffm->video_stream) {
   return ffm->video_stream->id;
  }
 } else {
  if ((int)info->index < ffm->num_audio_streams) {
   return ffm->audio_streams[info->index]->id;
  }
 }

 return -1;
}
