
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_colorspace { ____Placeholder_video_colorspace } video_colorspace ;


 char* get_x264_colorspace_name (int) ;
 scalar_t__ strcmp (char const* const,char const*) ;

__attribute__((used)) static inline int get_x264_cs_val(enum video_colorspace cs,
      const char *const names[])
{
 const char *name = get_x264_colorspace_name(cs);
 int idx = 0;
 do {
  if (strcmp(names[idx], name) == 0)
   return idx;
 } while (!!names[++idx]);

 return 0;
}
