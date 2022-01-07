
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct expander_data {int is_gate; float ratio; float threshold; size_t num_channels; size_t sample_rate; float slope; scalar_t__ envelope_buf_len; scalar_t__ runaverage_len; scalar_t__ env_in_len; scalar_t__ gaindB_len; int detector; int output_gain; void* release_gain; void* attack_gain; } ;
typedef int obs_data_t ;


 size_t const DEFAULT_AUDIO_BUF_MS ;
 size_t const MS_IN_S ;
 float const MS_IN_S_F ;
 int PEAK_DETECT ;
 int RMS_DETECT ;
 int S_ATTACK_TIME ;
 int S_DETECTOR ;
 int S_OUTPUT_GAIN ;
 int S_PRESETS ;
 int S_RATIO ;
 int S_RELEASE_TIME ;
 int S_THRESHOLD ;
 size_t audio_output_get_channels (int ) ;
 size_t audio_output_get_sample_rate (int ) ;
 int db_to_mul (float const) ;
 int expander_defaults (int *) ;
 void* gain_coefficient (size_t const,float const) ;
 int obs_data_clear (int *) ;
 scalar_t__ obs_data_get_double (int *,int ) ;
 scalar_t__ obs_data_get_int (int *,int ) ;
 char* obs_data_get_string (int *,int ) ;
 int obs_data_set_string (int *,int ,char*) ;
 int obs_get_audio () ;
 int resize_env_buffer (struct expander_data*,size_t) ;
 int resize_env_in_buffer (struct expander_data*,size_t) ;
 int resize_gaindB_buffer (struct expander_data*,size_t) ;
 int resize_runaverage_buffer (struct expander_data*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void expander_update(void *data, obs_data_t *s)
{
 struct expander_data *cd = data;
 const char *presets = obs_data_get_string(s, S_PRESETS);
 if (strcmp(presets, "expander") == 0 && cd->is_gate) {
  obs_data_clear(s);
  obs_data_set_string(s, S_PRESETS, "expander");
  expander_defaults(s);
  cd->is_gate = 0;
 }
 if (strcmp(presets, "gate") == 0 && !cd->is_gate) {
  obs_data_clear(s);
  obs_data_set_string(s, S_PRESETS, "gate");
  expander_defaults(s);
  cd->is_gate = 1;
 }

 const uint32_t sample_rate =
  audio_output_get_sample_rate(obs_get_audio());
 const size_t num_channels = audio_output_get_channels(obs_get_audio());
 const float attack_time_ms = (float)obs_data_get_int(s, S_ATTACK_TIME);
 const float release_time_ms =
  (float)obs_data_get_int(s, S_RELEASE_TIME);
 const float output_gain_db =
  (float)obs_data_get_double(s, S_OUTPUT_GAIN);

 cd->ratio = (float)obs_data_get_double(s, S_RATIO);

 cd->threshold = (float)obs_data_get_double(s, S_THRESHOLD);
 cd->attack_gain =
  gain_coefficient(sample_rate, attack_time_ms / MS_IN_S_F);
 cd->release_gain =
  gain_coefficient(sample_rate, release_time_ms / MS_IN_S_F);
 cd->output_gain = db_to_mul(output_gain_db);
 cd->num_channels = num_channels;
 cd->sample_rate = sample_rate;
 cd->slope = 1.0f - cd->ratio;

 const char *detect_mode = obs_data_get_string(s, S_DETECTOR);
 if (strcmp(detect_mode, "RMS") == 0)
  cd->detector = RMS_DETECT;
 if (strcmp(detect_mode, "peak") == 0)
  cd->detector = PEAK_DETECT;

 size_t sample_len = sample_rate * DEFAULT_AUDIO_BUF_MS / MS_IN_S;
 if (cd->envelope_buf_len == 0)
  resize_env_buffer(cd, sample_len);
 if (cd->runaverage_len == 0)
  resize_runaverage_buffer(cd, sample_len);
 if (cd->env_in_len == 0)
  resize_env_in_buffer(cd, sample_len);
 if (cd->gaindB_len == 0)
  resize_gaindB_buffer(cd, sample_len);
}
