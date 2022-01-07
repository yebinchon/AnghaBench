
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_x264 {int params; } ;


 int validate (struct obs_x264*,char const*,char*,int ) ;
 int validate_preset (struct obs_x264*,char const*) ;
 int x264_param_default_preset (int *,int ,int ) ;
 int x264_tune_names ;

__attribute__((used)) static bool reset_x264_params(struct obs_x264 *obsx264, const char *preset,
         const char *tune)
{
 int ret = x264_param_default_preset(
  &obsx264->params, validate_preset(obsx264, preset),
  validate(obsx264, tune, "tune", x264_tune_names));
 return ret == 0;
}
