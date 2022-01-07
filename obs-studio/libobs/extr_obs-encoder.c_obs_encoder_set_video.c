
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_t ;
struct video_output_info {int fps_num; int fps_den; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {int timebase_den; int timebase_num; int * media; TYPE_1__ info; } ;
typedef TYPE_2__ obs_encoder_t ;


 int LOG_WARNING ;
 scalar_t__ OBS_ENCODER_VIDEO ;
 int blog (int ,char*,int ) ;
 int obs_encoder_get_name (TYPE_2__*) ;
 int obs_encoder_valid (TYPE_2__*,char*) ;
 struct video_output_info* video_output_get_info (int *) ;

void obs_encoder_set_video(obs_encoder_t *encoder, video_t *video)
{
 const struct video_output_info *voi;

 if (!obs_encoder_valid(encoder, "obs_encoder_set_video"))
  return;
 if (encoder->info.type != OBS_ENCODER_VIDEO) {
  blog(LOG_WARNING,
       "obs_encoder_set_video: "
       "encoder '%s' is not a video encoder",
       obs_encoder_get_name(encoder));
  return;
 }
 if (!video)
  return;

 voi = video_output_get_info(video);

 encoder->media = video;
 encoder->timebase_num = voi->fps_den;
 encoder->timebase_den = voi->fps_num;
}
