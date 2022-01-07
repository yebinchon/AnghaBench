
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_format { ____Placeholder_video_format } video_format ;
__attribute__((used)) static inline unsigned get_format_lines(enum video_format format,
     unsigned height, size_t plane)
{
 switch (format) {
 case 136:
 case 133:
  return (plane == 0) ? height : height / 2;
 case 128:
 case 129:
 case 131:
 case 135:
 case 132:
 case 138:
 case 137:
 case 130:
  return height;
 case 134:
 default:
  break;
 }

 return 0;
}
