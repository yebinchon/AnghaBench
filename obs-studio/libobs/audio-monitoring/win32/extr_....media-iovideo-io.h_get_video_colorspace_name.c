
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_colorspace { ____Placeholder_video_colorspace } video_colorspace ;






__attribute__((used)) static inline const char *get_video_colorspace_name(enum video_colorspace cs)
{
 switch (cs) {
 case 129:
  return "709";
 case 130:
 case 128:;
 }

 return "601";
}
