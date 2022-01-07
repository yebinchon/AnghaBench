
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_format { ____Placeholder_video_format } video_format ;
__attribute__((used)) static inline bool format_is_yuv(enum video_format format)
{
 switch (format) {
 case 139:
 case 134:
 case 138:
 case 128:
 case 129:
 case 132:
 case 136:
 case 140:
 case 137:
 case 130:
 case 144:
  return 1;
 case 135:
 case 133:
 case 142:
 case 141:
 case 131:
 case 143:
  return 0;
 }

 return 0;
}
