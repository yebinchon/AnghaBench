
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scale_filter_data {int valid; int base_canvas_resolution; int aspect_ratio_only; int undistort; int sampling; int cy_in; int cx_in; } ;
struct obs_video_info {int base_height; int base_width; } ;
typedef int obs_data_t ;


 int OBS_SCALE_AREA ;
 int OBS_SCALE_BICUBIC ;
 int OBS_SCALE_BILINEAR ;
 int OBS_SCALE_LANCZOS ;
 int OBS_SCALE_POINT ;
 int S_RESOLUTION ;
 int S_SAMPLING ;
 int S_SAMPLING_AREA ;
 int S_SAMPLING_BILINEAR ;
 int S_SAMPLING_LANCZOS ;
 int S_SAMPLING_POINT ;
 int S_UNDISTORT ;
 int T_BASE ;
 scalar_t__ astrcmpi (char const*,int ) ;
 int obs_data_get_bool (int *,int ) ;
 char* obs_data_get_string (int *,int ) ;
 int obs_get_video_info (struct obs_video_info*) ;
 int sscanf (char const*,char*,int *,int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static void scale_filter_update(void *data, obs_data_t *settings)
{
 struct scale_filter_data *filter = data;
 int ret;

 const char *res_str = obs_data_get_string(settings, S_RESOLUTION);
 const char *sampling = obs_data_get_string(settings, S_SAMPLING);

 filter->valid = 1;
 filter->base_canvas_resolution = 0;

 if (strcmp(res_str, T_BASE) == 0) {
  struct obs_video_info ovi;
  obs_get_video_info(&ovi);
  filter->aspect_ratio_only = 0;
  filter->base_canvas_resolution = 1;
  filter->cx_in = ovi.base_width;
  filter->cy_in = ovi.base_height;
 } else {
  ret = sscanf(res_str, "%dx%d", &filter->cx_in, &filter->cy_in);
  if (ret == 2) {
   filter->aspect_ratio_only = 0;
  } else {
   ret = sscanf(res_str, "%d:%d", &filter->cx_in,
         &filter->cy_in);
   if (ret != 2) {
    filter->valid = 0;
    return;
   }

   filter->aspect_ratio_only = 1;
  }
 }

 if (astrcmpi(sampling, S_SAMPLING_POINT) == 0) {
  filter->sampling = OBS_SCALE_POINT;

 } else if (astrcmpi(sampling, S_SAMPLING_BILINEAR) == 0) {
  filter->sampling = OBS_SCALE_BILINEAR;

 } else if (astrcmpi(sampling, S_SAMPLING_LANCZOS) == 0) {
  filter->sampling = OBS_SCALE_LANCZOS;

 } else if (astrcmpi(sampling, S_SAMPLING_AREA) == 0) {
  filter->sampling = OBS_SCALE_AREA;

 } else {
  filter->sampling = OBS_SCALE_BICUBIC;
 }

 filter->undistort = obs_data_get_bool(settings, S_UNDISTORT);
}
