
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
typedef enum video_format { ____Placeholder_video_format } video_format ;
 int VIDEO_FORMAT_BGR3 ;
 int VIDEO_FORMAT_BGRA ;
 int VIDEO_FORMAT_BGRX ;
 int VIDEO_FORMAT_I420 ;
 int VIDEO_FORMAT_NONE ;
 int VIDEO_FORMAT_NV12 ;
 int VIDEO_FORMAT_UYVY ;
 int VIDEO_FORMAT_YUY2 ;
 int VIDEO_FORMAT_YVYU ;

__attribute__((used)) static inline enum video_format v4l2_to_obs_video_format(uint_fast32_t format)
{
 switch (format) {
 case 128:
  return VIDEO_FORMAT_YVYU;
 case 130:
  return VIDEO_FORMAT_YUY2;
 case 133:
  return VIDEO_FORMAT_UYVY;
 case 134:
  return VIDEO_FORMAT_NV12;
 case 131:
  return VIDEO_FORMAT_I420;
 case 129:
  return VIDEO_FORMAT_I420;

 case 132:
  return VIDEO_FORMAT_BGRX;


 case 136:
  return VIDEO_FORMAT_BGRA;

 case 135:
  return VIDEO_FORMAT_BGR3;
 default:
  return VIDEO_FORMAT_NONE;
 }
}
