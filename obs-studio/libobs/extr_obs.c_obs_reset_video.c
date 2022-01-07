
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_video_info {int output_width; int output_height; int base_width; int base_height; int scale_type; int output_format; int fps_den; int fps_num; int range; int colorspace; } ;
struct obs_core_video {int graphics; scalar_t__ video; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 int LOG_INFO ;






 int OBS_VIDEO_CURRENTLY_ACTIVE ;
 int OBS_VIDEO_FAIL ;
 int OBS_VIDEO_INVALID_PARAM ;
 int OBS_VIDEO_SUCCESS ;
 int blog (int ,char*,...) ;
 int format_is_yuv (int ) ;
 char* get_video_colorspace_name (int ) ;
 int get_video_format_name (int ) ;
 char* get_video_range_name (int ,int ) ;
 TYPE_1__* obs ;
 int obs_free_graphics () ;
 int obs_free_video () ;
 int obs_init_graphics (struct obs_video_info*) ;
 int obs_init_video (struct obs_video_info*) ;
 scalar_t__ obs_video_active () ;
 int size_valid (int,int) ;
 int stop_video () ;

int obs_reset_video(struct obs_video_info *ovi)
{
 if (!obs)
  return OBS_VIDEO_FAIL;


 if (obs->video.video && obs_video_active())
  return OBS_VIDEO_CURRENTLY_ACTIVE;

 if (!size_valid(ovi->output_width, ovi->output_height) ||
     !size_valid(ovi->base_width, ovi->base_height))
  return OBS_VIDEO_INVALID_PARAM;

 struct obs_core_video *video = &obs->video;

 stop_video();
 obs_free_video();


 ovi->output_width &= 0xFFFFFFFC;
 ovi->output_height &= 0xFFFFFFFE;

 if (!video->graphics) {
  int errorcode = obs_init_graphics(ovi);
  if (errorcode != OBS_VIDEO_SUCCESS) {
   obs_free_graphics();
   return errorcode;
  }
 }

 const char *scale_type_name = "";
 switch (ovi->scale_type) {
 case 130:
  scale_type_name = "Disabled";
  break;
 case 128:
  scale_type_name = "Point";
  break;
 case 132:
  scale_type_name = "Bicubic";
  break;
 case 131:
  scale_type_name = "Bilinear";
  break;
 case 129:
  scale_type_name = "Lanczos";
  break;
 case 133:
  scale_type_name = "Area";
  break;
 }

 bool yuv = format_is_yuv(ovi->output_format);
 const char *yuv_format = get_video_colorspace_name(ovi->colorspace);
 const char *yuv_range =
  get_video_range_name(ovi->output_format, ovi->range);

 blog(LOG_INFO, "---------------------------------");
 blog(LOG_INFO,
      "video settings reset:\n"
      "\tbase resolution:   %dx%d\n"
      "\toutput resolution: %dx%d\n"
      "\tdownscale filter:  %s\n"
      "\tfps:               %d/%d\n"
      "\tformat:            %s\n"
      "\tYUV mode:          %s%s%s",
      ovi->base_width, ovi->base_height, ovi->output_width,
      ovi->output_height, scale_type_name, ovi->fps_num, ovi->fps_den,
      get_video_format_name(ovi->output_format),
      yuv ? yuv_format : "None", yuv ? "/" : "", yuv ? yuv_range : "");

 return obs_init_video(ovi);
}
