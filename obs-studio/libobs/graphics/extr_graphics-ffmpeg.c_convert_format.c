
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;





 int GS_BGRA ;
 int GS_BGRX ;
 int GS_RGBA ;

__attribute__((used)) static inline enum gs_color_format convert_format(enum AVPixelFormat format)
{
 switch ((int)format) {
 case 128:
  return GS_RGBA;
 case 129:
  return GS_BGRA;
 case 130:
  return GS_BGRX;
 }

 return GS_BGRX;
}
