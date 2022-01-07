
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_repeat_headers; } ;
struct obs_x264 {TYPE_1__ params; int context; } ;
typedef int obs_data_t ;


 int LOG_INFO ;
 int apply_x264_profile (struct obs_x264*,char*) ;
 int bfree (char*) ;
 int blog (int ,char*) ;
 char* bstrdup (char*) ;
 int info (char*,char const*) ;
 char* obs_data_get_string (int *,char*) ;
 int override_base_params (struct obs_x264*,char**,char**,char**,char**) ;
 int reset_x264_params (struct obs_x264*,char*,char*) ;
 int strlist_free (char**) ;
 char** strlist_split (char const*,char,int) ;
 int update_params (struct obs_x264*,int *,char**,int) ;

__attribute__((used)) static bool update_settings(struct obs_x264 *obsx264, obs_data_t *settings,
       bool update)
{
 char *preset = bstrdup(obs_data_get_string(settings, "preset"));
 char *profile = bstrdup(obs_data_get_string(settings, "profile"));
 char *tune = bstrdup(obs_data_get_string(settings, "tune"));
 const char *opts = obs_data_get_string(settings, "x264opts");

 char **paramlist;
 bool success = 1;

 paramlist = strlist_split(opts, ' ', 0);

 if (!update)
  blog(LOG_INFO, "---------------------------------");

 if (!obsx264->context) {
  override_base_params(obsx264, paramlist, &preset, &profile,
         &tune);

  if (preset && *preset)
   info("preset: %s", preset);
  if (profile && *profile)
   info("profile: %s", profile);
  if (tune && *tune)
   info("tune: %s", tune);

  success = reset_x264_params(obsx264, preset, tune);
 }

 if (success) {
  update_params(obsx264, settings, paramlist, update);
  if (opts && *opts && !update)
   info("custom settings: %s", opts);

  if (!obsx264->context)
   apply_x264_profile(obsx264, profile);
 }

 obsx264->params.b_repeat_headers = 0;

 strlist_free(paramlist);
 bfree(preset);
 bfree(profile);
 bfree(tune);

 return success;
}
