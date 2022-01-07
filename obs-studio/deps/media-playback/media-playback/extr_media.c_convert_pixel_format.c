
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_format { ____Placeholder_video_format } video_format ;
 int VIDEO_FORMAT_BGRA ;
 int VIDEO_FORMAT_BGRX ;
 int VIDEO_FORMAT_I40A ;
 int VIDEO_FORMAT_I420 ;
 int VIDEO_FORMAT_I42A ;
 int VIDEO_FORMAT_I444 ;
 int VIDEO_FORMAT_NONE ;
 int VIDEO_FORMAT_NV12 ;
 int VIDEO_FORMAT_RGBA ;
 int VIDEO_FORMAT_UYVY ;
 int VIDEO_FORMAT_YUVA ;
 int VIDEO_FORMAT_YUY2 ;

__attribute__((used)) static inline enum video_format convert_pixel_format(int f)
{
 switch (f) {
 case 137:
  return VIDEO_FORMAT_NONE;
 case 133:
  return VIDEO_FORMAT_I420;
 case 136:
  return VIDEO_FORMAT_NV12;
 case 128:
  return VIDEO_FORMAT_YUY2;
 case 132:
  return VIDEO_FORMAT_I444;
 case 134:
  return VIDEO_FORMAT_UYVY;
 case 135:
  return VIDEO_FORMAT_RGBA;
 case 138:
  return VIDEO_FORMAT_BGRA;
 case 139:
  return VIDEO_FORMAT_BGRX;
 case 131:
  return VIDEO_FORMAT_I40A;
 case 130:
  return VIDEO_FORMAT_I42A;
 case 129:
  return VIDEO_FORMAT_YUVA;
 default:;
 }

 return VIDEO_FORMAT_NONE;
}
