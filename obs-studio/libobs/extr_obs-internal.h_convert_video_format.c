
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_format { ____Placeholder_video_format } video_format ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int GS_BGRA ;
 int GS_BGRX ;
 int GS_RGBA ;







__attribute__((used)) static inline enum gs_color_format
convert_video_format(enum video_format format)
{
 switch (format) {
 case 129:
  return GS_RGBA;
 case 132:
 case 131:
 case 130:
 case 128:
 case 133:
  return GS_BGRA;
 default:
  return GS_BGRX;
 }
}
