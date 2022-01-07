
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;
__attribute__((used)) static inline uint32_t gs_get_format_bpp(enum gs_color_format format)
{
 switch (format) {
 case 146:
  return 8;
 case 136:
  return 8;
 case 132:
  return 32;
 case 144:
  return 32;
 case 145:
  return 32;
 case 140:
  return 32;
 case 131:
  return 64;
 case 139:
  return 16;
 case 130:
  return 64;
 case 129:
  return 128;
 case 134:
  return 32;
 case 133:
  return 64;
 case 138:
  return 16;
 case 137:
  return 32;
 case 143:
  return 4;
 case 142:
  return 8;
 case 141:
  return 8;
 case 135:
  return 16;
 case 128:
  return 0;
 }

 return 0;
}
