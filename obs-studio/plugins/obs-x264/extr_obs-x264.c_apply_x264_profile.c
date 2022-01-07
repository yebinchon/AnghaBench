
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_x264 {int params; int context; } ;


 int warn (char*,char const*) ;
 int x264_param_apply_profile (int *,char const*) ;

__attribute__((used)) static inline void apply_x264_profile(struct obs_x264 *obsx264,
          const char *profile)
{
 if (!obsx264->context && profile && *profile) {
  int ret = x264_param_apply_profile(&obsx264->params, profile);
  if (ret != 0)
   warn("Failed to set x264 profile '%s'", profile);
 }
}
