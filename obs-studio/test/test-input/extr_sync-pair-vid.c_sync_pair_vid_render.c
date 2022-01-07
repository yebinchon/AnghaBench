
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct video_output_info {scalar_t__ fps_num; scalar_t__ fps_den; } ;
struct sync_pair_vid {int black; int white; int tex; } ;
typedef int gs_effect_t ;


 int fill_texture (int *,int) ;
 scalar_t__ gs_texture_map (int ,int **,int *) ;
 int gs_texture_unmap (int ) ;
 scalar_t__ last_frame ;
 int obs_get_video () ;
 scalar_t__ obs_get_video_frame_time () ;
 int obs_source_draw (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ starting_time ;
 scalar_t__ video_output_get_frame_time (int ) ;
 struct video_output_info* video_output_get_info (int ) ;
 int whitelist_time (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void sync_pair_vid_render(void *data, gs_effect_t *effect)
{
 struct sync_pair_vid *spv = data;

 uint64_t ts = obs_get_video_frame_time();
 if (!starting_time)
  starting_time = ts;

 uint64_t interval = video_output_get_frame_time(obs_get_video());
 const struct video_output_info *voi =
  video_output_get_info(obs_get_video());
 uint64_t fps_num = voi->fps_num;
 uint64_t fps_den = voi->fps_den;

 bool whitelist = whitelist_time(ts, interval, fps_num, fps_den);
 obs_source_draw(whitelist ? spv->white : spv->black, 0, 0, 0, 0, 0);

}
