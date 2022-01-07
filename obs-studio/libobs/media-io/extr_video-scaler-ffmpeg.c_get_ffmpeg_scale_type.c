
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_scale_type { ____Placeholder_video_scale_type } video_scale_type ;


 int SWS_AREA ;
 int SWS_BICUBIC ;
 int SWS_BILINEAR ;
 int SWS_FAST_BILINEAR ;
 int SWS_POINT ;






__attribute__((used)) static inline int get_ffmpeg_scale_type(enum video_scale_type type)
{
 switch (type) {
 case 130:
  return SWS_FAST_BILINEAR;
 case 128:
  return SWS_POINT;
 case 129:
  return SWS_FAST_BILINEAR;
 case 131:
  return SWS_BILINEAR | SWS_AREA;
 case 132:
  return SWS_BICUBIC;
 }

 return SWS_POINT;
}
