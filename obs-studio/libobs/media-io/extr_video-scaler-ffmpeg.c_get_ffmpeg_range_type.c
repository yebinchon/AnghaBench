
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_range_type { ____Placeholder_video_range_type } video_range_type ;






__attribute__((used)) static inline int get_ffmpeg_range_type(enum video_range_type type)
{
 switch (type) {
 case 130:
  return 0;
 case 128:
  return 0;
 case 129:
  return 1;
 }

 return 0;
}
