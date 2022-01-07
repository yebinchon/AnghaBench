
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;
 int GS_BGRA ;
 int GS_BGRX ;
 int GS_R10G10B10A2 ;
 int GS_RGBA ;
 int GS_RGBA16 ;
 int GS_RGBA16F ;
 int GS_RGBA32F ;
 int GS_UNKNOWN ;

__attribute__((used)) static inline enum gs_color_format convert_format(uint32_t format)
{
 switch (format) {
 case 128:
  return GS_RGBA;
 case 133:
  return GS_BGRX;
 case 134:
  return GS_BGRA;
 case 132:
  return GS_R10G10B10A2;
 case 130:
  return GS_RGBA16;
 case 131:
  return GS_RGBA16F;
 case 129:
  return GS_RGBA32F;
 }

 return GS_UNKNOWN;
}
