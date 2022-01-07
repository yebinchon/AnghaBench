
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_t ;
typedef void* uint32_t ;
struct vt_h264_encoder {int fullrange; void* bframes; int rc_max_bitrate_window; scalar_t__ rc_max_bitrate; void* limit_bitrate; int profile; void* bitrate; void* keyint; int fps_den; int fps_num; int encoder; int height; int width; int colorspace; } ;
struct video_scale_info {int format; } ;
struct video_output_info {scalar_t__ range; int fps_den; int fps_num; int colorspace; int format; } ;
typedef int obs_data_t ;


 scalar_t__ VIDEO_RANGE_FULL ;
 void* obs_data_get_bool (int *,char*) ;
 int obs_data_get_double (int *,char*) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int obs_data_get_string (int *,char*) ;
 int obs_encoder_get_height (int ) ;
 int obs_encoder_get_width (int ) ;
 int * obs_encoder_video (int ) ;
 struct video_output_info* video_output_get_info (int *) ;
 int vt_h264_video_info (struct vt_h264_encoder*,struct video_scale_info*) ;

__attribute__((used)) static void update_params(struct vt_h264_encoder *enc, obs_data_t *settings)
{
 video_t *video = obs_encoder_video(enc->encoder);
 const struct video_output_info *voi = video_output_get_info(video);

 struct video_scale_info info = {.format = voi->format};

 enc->fullrange = voi->range == VIDEO_RANGE_FULL;


 vt_h264_video_info(enc, &info);

 enc->colorspace = voi->colorspace;

 enc->width = obs_encoder_get_width(enc->encoder);
 enc->height = obs_encoder_get_height(enc->encoder);
 enc->fps_num = voi->fps_num;
 enc->fps_den = voi->fps_den;
 enc->keyint = (uint32_t)obs_data_get_int(settings, "keyint_sec");
 enc->bitrate = (uint32_t)obs_data_get_int(settings, "bitrate");
 enc->profile = obs_data_get_string(settings, "profile");
 enc->limit_bitrate = obs_data_get_bool(settings, "limit_bitrate");
 enc->rc_max_bitrate = obs_data_get_int(settings, "max_bitrate");
 enc->rc_max_bitrate_window =
  obs_data_get_double(settings, "max_bitrate_window");
 enc->bframes = obs_data_get_bool(settings, "bframes");
}
