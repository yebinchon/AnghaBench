
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_media_info {int buffering; int is_local_file; int hardware_decoding; int force_range; int speed; int format; scalar_t__* path; int stop_cb; int a_cb; int v_preload_cb; int v_cb; struct ffmpeg_source* opaque; } ;
struct ffmpeg_source {int buffering_mb; int media; int media_valid; int seekable; int is_local_file; int is_hw_decoding; int range; int speed_percent; int input_format; scalar_t__* input; } ;


 int get_audio ;
 int get_frame ;
 int media_stopped ;
 int mp_media_init (int *,struct mp_media_info*) ;
 int preload_frame ;

__attribute__((used)) static void ffmpeg_source_open(struct ffmpeg_source *s)
{
 if (s->input && *s->input) {
  struct mp_media_info info = {
   .opaque = s,
   .v_cb = get_frame,
   .v_preload_cb = preload_frame,
   .a_cb = get_audio,
   .stop_cb = media_stopped,
   .path = s->input,
   .format = s->input_format,
   .buffering = s->buffering_mb * 1024 * 1024,
   .speed = s->speed_percent,
   .force_range = s->range,
   .hardware_decoding = s->is_hw_decoding,
   .is_local_file = s->is_local_file || s->seekable};

  s->media_valid = mp_media_init(&s->media, &info);
 }
}
