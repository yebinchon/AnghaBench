
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ffmpeg_mux {int * audio_header; int video_header; } ;
struct ffm_packet_info {scalar_t__ type; size_t index; scalar_t__ size; } ;


 scalar_t__ FFM_PACKET_VIDEO ;
 int set_header (int *,int *,size_t) ;

__attribute__((used)) static void ffmpeg_mux_header(struct ffmpeg_mux *ffm, uint8_t *data,
         struct ffm_packet_info *info)
{
 if (info->type == FFM_PACKET_VIDEO) {
  set_header(&ffm->video_header, data, (size_t)info->size);
 } else {
  set_header(&ffm->audio_header[info->index], data,
      (size_t)info->size);
 }
}
