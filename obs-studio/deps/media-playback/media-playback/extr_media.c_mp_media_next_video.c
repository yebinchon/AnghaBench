
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct obs_source_frame {int* data; int* linesize; int format; int full_range; int height; int flip; int width; scalar_t__ timestamp; int color_range_max; int color_range_min; int color_matrix; } ;
struct mp_decode {int frame_ready; int got_first_keyframe; scalar_t__ frame_pts; TYPE_2__* frame; } ;
struct TYPE_5__ {int* scale_pic; scalar_t__* scale_linesizes; int force_range; int cur_space; int cur_range; int opaque; int (* v_cb ) (int ,struct obs_source_frame*) ;int (* v_preload_cb ) (int ,struct obs_source_frame*) ;int is_local_file; scalar_t__ play_sys_ts; scalar_t__ start_ts; scalar_t__ base_ts; int scale_format; scalar_t__ swscale; struct obs_source_frame obsframe; struct mp_decode v; } ;
typedef TYPE_1__ mp_media_t ;
typedef enum video_range_type { ____Placeholder_video_range_type } video_range_type ;
typedef enum video_format { ____Placeholder_video_format } video_format ;
typedef enum video_colorspace { ____Placeholder_video_colorspace } video_colorspace ;
struct TYPE_6__ {int* data; scalar_t__* linesize; int height; int key_frame; int width; int color_range; int colorspace; } ;
typedef TYPE_2__ AVFrame ;


 size_t MAX_AV_PLANES ;
 scalar_t__ VIDEO_FORMAT_NONE ;
 int VIDEO_RANGE_DEFAULT ;
 int VIDEO_RANGE_FULL ;
 void* abs (scalar_t__) ;
 scalar_t__ base_sys_ts ;
 int convert_color_range (int ) ;
 int convert_color_space (int ) ;
 int convert_pixel_format (int ) ;
 int mp_media_can_play_frame (TYPE_1__*,struct mp_decode*) ;
 int stub1 (int ,struct obs_source_frame*) ;
 int stub2 (int ,struct obs_source_frame*) ;
 int sws_scale (scalar_t__,int const* const*,scalar_t__*,int ,int,int*,scalar_t__*) ;
 int video_format_get_parameters (int,int,int ,int ,int ) ;

__attribute__((used)) static void mp_media_next_video(mp_media_t *m, bool preload)
{
 struct mp_decode *d = &m->v;
 struct obs_source_frame *frame = &m->obsframe;
 enum video_format new_format;
 enum video_colorspace new_space;
 enum video_range_type new_range;
 AVFrame *f = d->frame;

 if (!preload) {
  if (!mp_media_can_play_frame(m, d))
   return;

  d->frame_ready = 0;

  if (!m->v_cb)
   return;
 } else if (!d->frame_ready) {
  return;
 }

 bool flip = 0;
 if (m->swscale) {
  int ret = sws_scale(m->swscale, (const uint8_t *const *)f->data,
        f->linesize, 0, f->height, m->scale_pic,
        m->scale_linesizes);
  if (ret < 0)
   return;

  flip = m->scale_linesizes[0] < 0 && m->scale_linesizes[1] == 0;
  for (size_t i = 0; i < 4; i++) {
   frame->data[i] = m->scale_pic[i];
   frame->linesize[i] = abs(m->scale_linesizes[i]);
  }

 } else {
  flip = f->linesize[0] < 0 && f->linesize[1] == 0;

  for (size_t i = 0; i < MAX_AV_PLANES; i++) {
   frame->data[i] = f->data[i];
   frame->linesize[i] = abs(f->linesize[i]);
  }
 }

 if (flip)
  frame->data[0] -= frame->linesize[0] * (f->height - 1);

 new_format = convert_pixel_format(m->scale_format);
 new_space = convert_color_space(f->colorspace);
 new_range = m->force_range == VIDEO_RANGE_DEFAULT
       ? convert_color_range(f->color_range)
       : m->force_range;

 if (new_format != frame->format || new_space != m->cur_space ||
     new_range != m->cur_range) {
  bool success;

  frame->format = new_format;
  frame->full_range = new_range == VIDEO_RANGE_FULL;

  success = video_format_get_parameters(new_space, new_range,
            frame->color_matrix,
            frame->color_range_min,
            frame->color_range_max);

  frame->format = new_format;
  m->cur_space = new_space;
  m->cur_range = new_range;

  if (!success) {
   frame->format = VIDEO_FORMAT_NONE;
   return;
  }
 }

 if (frame->format == VIDEO_FORMAT_NONE)
  return;

 frame->timestamp = m->base_ts + d->frame_pts - m->start_ts +
      m->play_sys_ts - base_sys_ts;
 frame->width = f->width;
 frame->height = f->height;
 frame->flip = flip;

 if (!m->is_local_file && !d->got_first_keyframe) {
  if (!f->key_frame)
   return;

  d->got_first_keyframe = 1;
 }

 if (preload)
  m->v_preload_cb(m->opaque, frame);
 else
  m->v_cb(m->opaque, frame);
}
