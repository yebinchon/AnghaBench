
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_x264 {int dummy; } ;


 scalar_t__ astrcmpi (char*,char*) ;
 int bfree (char*) ;
 char* bstrdup (char const*) ;
 scalar_t__ getparam (char const*,char**,char const**) ;
 char* validate (struct obs_x264*,char const*,char*,int ) ;
 int x264_preset_names ;
 int x264_profile_names ;
 int x264_tune_names ;

__attribute__((used)) static void override_base_param(struct obs_x264 *obsx264, const char *param,
    char **preset, char **profile, char **tune)
{
 char *name;
 const char *val;

 if (getparam(param, &name, &val)) {
  if (astrcmpi(name, "preset") == 0) {
   const char *valid_name = validate(
    obsx264, val, "preset", x264_preset_names);
   if (valid_name) {
    bfree(*preset);
    *preset = bstrdup(val);
   }

  } else if (astrcmpi(name, "profile") == 0) {
   const char *valid_name = validate(
    obsx264, val, "profile", x264_profile_names);
   if (valid_name) {
    bfree(*profile);
    *profile = bstrdup(val);
   }

  } else if (astrcmpi(name, "tune") == 0) {
   const char *valid_name =
    validate(obsx264, val, "tune", x264_tune_names);
   if (valid_name) {
    bfree(*tune);
    *tune = bstrdup(val);
   }
  }

  bfree(name);
 }
}
