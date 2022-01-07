
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_scale_info {scalar_t__ width; scalar_t__ height; int range; int colorspace; int format; } ;
struct video_output_info {scalar_t__ width; scalar_t__ height; int range; int colorspace; int format; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int (* get_video_info ) (int ,struct video_scale_info*) ;} ;
struct obs_encoder {TYPE_2__ context; TYPE_1__ info; int media; } ;


 scalar_t__ obs_encoder_get_height (struct obs_encoder*) ;
 scalar_t__ obs_encoder_get_width (struct obs_encoder*) ;
 int obs_encoder_set_scaled_size (struct obs_encoder*,scalar_t__,scalar_t__) ;
 int stub1 (int ,struct video_scale_info*) ;
 struct video_output_info* video_output_get_info (int ) ;

__attribute__((used)) static inline void get_video_info(struct obs_encoder *encoder,
      struct video_scale_info *info)
{
 const struct video_output_info *voi;
 voi = video_output_get_info(encoder->media);

 info->format = voi->format;
 info->colorspace = voi->colorspace;
 info->range = voi->range;
 info->width = obs_encoder_get_width(encoder);
 info->height = obs_encoder_get_height(encoder);

 if (encoder->info.get_video_info)
  encoder->info.get_video_info(encoder->context.data, info);

 if (info->width != voi->width || info->height != voi->height)
  obs_encoder_set_scaled_size(encoder, info->width, info->height);
}
