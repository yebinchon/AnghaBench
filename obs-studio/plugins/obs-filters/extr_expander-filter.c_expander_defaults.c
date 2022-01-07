
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_ATTACK_TIME ;
 int S_DETECTOR ;
 int S_OUTPUT_GAIN ;
 int S_PRESETS ;
 int S_RATIO ;
 int S_RELEASE_TIME ;
 int S_THRESHOLD ;
 char* obs_data_get_string (int *,int ) ;
 int obs_data_set_default_double (int *,int ,double) ;
 int obs_data_set_default_int (int *,int ,int) ;
 int obs_data_set_default_string (int *,int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void expander_defaults(obs_data_t *s)
{
 const char *presets = obs_data_get_string(s, S_PRESETS);
 bool is_expander_preset = 1;
 if (strcmp(presets, "gate") == 0)
  is_expander_preset = 0;
 obs_data_set_default_string(s, S_PRESETS,
        is_expander_preset ? "expander" : "gate");
 obs_data_set_default_double(s, S_RATIO,
        is_expander_preset ? 2.0 : 10.0);
 obs_data_set_default_double(s, S_THRESHOLD, -40.0f);
 obs_data_set_default_int(s, S_ATTACK_TIME, 10);
 obs_data_set_default_int(s, S_RELEASE_TIME,
     is_expander_preset ? 50 : 125);
 obs_data_set_default_double(s, S_OUTPUT_GAIN, 0.0);
 obs_data_set_default_string(s, S_DETECTOR, "RMS");
}
