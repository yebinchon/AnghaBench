
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_x264 {int dummy; } ;


 char* validate (struct obs_x264*,char const*,char*,int ) ;
 int x264_preset_names ;

__attribute__((used)) static inline const char *validate_preset(struct obs_x264 *obsx264,
       const char *preset)
{
 const char *new_preset =
  validate(obsx264, preset, "preset", x264_preset_names);
 return new_preset ? new_preset : "veryfast";
}
