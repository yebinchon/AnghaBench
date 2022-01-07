
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vframe_info ;
struct video_data {int timestamp; } ;
struct obs_vframe_info {int count; int timestamp; } ;
struct obs_core_video {int cur_texture; int vframe_info_buffer; int graphics; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 int GS_DEBUG_COLOR_RENDER_VIDEO ;
 int GS_DEBUG_MARKER_BEGIN (int ,int ) ;
 int GS_DEBUG_MARKER_END () ;
 int NUM_TEXTURES ;
 int circlebuf_pop_front (int *,struct obs_vframe_info*,int) ;
 int download_frame (struct obs_core_video*,int,struct video_data*) ;
 int gs_enter_context (int ) ;
 int gs_flush () ;
 int gs_leave_context () ;
 int memset (struct video_data*,int ,int) ;
 TYPE_1__* obs ;
 int output_frame_download_frame_name ;
 int output_frame_gs_context_name ;
 int output_frame_gs_flush_name ;
 int output_frame_output_video_data_name ;
 int output_frame_render_video_name ;
 int output_video_data (struct obs_core_video*,struct video_data*,int ) ;
 int profile_end (int ) ;
 int profile_start (int ) ;
 int render_video (struct obs_core_video*,int,int const,int) ;

__attribute__((used)) static inline void output_frame(bool raw_active, const bool gpu_active)
{
 struct obs_core_video *video = &obs->video;
 int cur_texture = video->cur_texture;
 int prev_texture = cur_texture == 0 ? NUM_TEXTURES - 1
         : cur_texture - 1;
 struct video_data frame;
 bool frame_ready = 0;

 memset(&frame, 0, sizeof(struct video_data));

 profile_start(output_frame_gs_context_name);
 gs_enter_context(video->graphics);

 profile_start(output_frame_render_video_name);
 GS_DEBUG_MARKER_BEGIN(GS_DEBUG_COLOR_RENDER_VIDEO,
         output_frame_render_video_name);
 render_video(video, raw_active, gpu_active, cur_texture);
 GS_DEBUG_MARKER_END();
 profile_end(output_frame_render_video_name);

 if (raw_active) {
  profile_start(output_frame_download_frame_name);
  frame_ready = download_frame(video, prev_texture, &frame);
  profile_end(output_frame_download_frame_name);
 }

 profile_start(output_frame_gs_flush_name);
 gs_flush();
 profile_end(output_frame_gs_flush_name);

 gs_leave_context();
 profile_end(output_frame_gs_context_name);

 if (raw_active && frame_ready) {
  struct obs_vframe_info vframe_info;
  circlebuf_pop_front(&video->vframe_info_buffer, &vframe_info,
        sizeof(vframe_info));

  frame.timestamp = vframe_info.timestamp;
  profile_start(output_frame_output_video_data_name);
  output_video_data(video, &frame, vframe_info.count);
  profile_end(output_frame_output_video_data_name);
 }

 if (++video->cur_texture == NUM_TEXTURES)
  video->cur_texture = 0;
}
