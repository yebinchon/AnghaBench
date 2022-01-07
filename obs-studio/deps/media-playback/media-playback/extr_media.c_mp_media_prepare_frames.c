
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* frame; scalar_t__ frame_ready; } ;
struct TYPE_9__ {int eof; scalar_t__ scale_format; TYPE_7__ v; int swscale; scalar_t__ has_video; TYPE_7__ a; scalar_t__ has_audio; } ;
typedef TYPE_2__ mp_media_t ;
struct TYPE_8__ {scalar_t__ format; } ;


 int AVERROR_EOF ;
 scalar_t__ closest_format (scalar_t__) ;
 int mp_decode_frame (TYPE_7__*) ;
 int mp_media_init_scaling (TYPE_2__*) ;
 int mp_media_next_packet (TYPE_2__*) ;
 int mp_media_ready_to_start (TYPE_2__*) ;

__attribute__((used)) static bool mp_media_prepare_frames(mp_media_t *m)
{
 while (!mp_media_ready_to_start(m)) {
  if (!m->eof) {
   int ret = mp_media_next_packet(m);
   if (ret == AVERROR_EOF)
    m->eof = 1;
   else if (ret < 0)
    return 0;
  }

  if (m->has_video && !mp_decode_frame(&m->v))
   return 0;
  if (m->has_audio && !mp_decode_frame(&m->a))
   return 0;
 }

 if (m->has_video && m->v.frame_ready && !m->swscale) {
  m->scale_format = closest_format(m->v.frame->format);
  if (m->scale_format != m->v.frame->format) {
   if (!mp_media_init_scaling(m)) {
    return 0;
   }
  }
 }

 return 1;
}
