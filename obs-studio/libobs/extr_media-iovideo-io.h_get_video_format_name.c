
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_format { ____Placeholder_video_format } video_format ;
__attribute__((used)) static inline const char *get_video_format_name(enum video_format format)
{
 switch (format) {
 case 139:
  return "I420";
 case 134:
  return "NV12";
 case 138:
  return "I422";
 case 128:
  return "YVYU";
 case 129:
  return "YUY2";
 case 132:
  return "UYVY";
 case 133:
  return "RGBA";
 case 142:
  return "BGRA";
 case 141:
  return "BGRX";
 case 136:
  return "I444";
 case 131:
  return "Y800";
 case 143:
  return "BGR3";
 case 140:
  return "I40A";
 case 137:
  return "I42A";
 case 130:
  return "YUVA";
 case 144:
  return "AYUV";
 case 135:;
 }

 return "None";
}
