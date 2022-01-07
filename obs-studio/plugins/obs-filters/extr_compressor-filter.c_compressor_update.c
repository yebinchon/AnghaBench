
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct compressor_data {float ratio; float threshold; size_t num_channels; size_t sample_rate; float slope; char const* sidechain_name; scalar_t__ envelope_buf_len; int sidechain_update_mutex; scalar_t__ sidechain_check_time; int * weak_sidechain; int output_gain; void* release_gain; void* attack_gain; } ;
typedef int obs_weak_source_t ;
typedef int obs_source_t ;
typedef int obs_data_t ;


 size_t const DEFAULT_AUDIO_BUF_MS ;
 size_t const MS_IN_S ;
 float const MS_IN_S_F ;
 int S_ATTACK_TIME ;
 int S_OUTPUT_GAIN ;
 int S_RATIO ;
 int S_RELEASE_TIME ;
 int S_SIDECHAIN_SOURCE ;
 int S_THRESHOLD ;
 size_t audio_output_get_channels (int ) ;
 size_t audio_output_get_sample_rate (int ) ;
 int bfree (char const*) ;
 char const* bstrdup (char const*) ;
 int db_to_mul (float const) ;
 void* gain_coefficient (size_t const,float const) ;
 scalar_t__ obs_data_get_double (int *,int ) ;
 scalar_t__ obs_data_get_int (int *,int ) ;
 char* obs_data_get_string (int *,int ) ;
 int obs_get_audio () ;
 int obs_source_release (int *) ;
 int obs_source_remove_audio_capture_callback (int *,int ,struct compressor_data*) ;
 int * obs_weak_source_get_source (int *) ;
 int obs_weak_source_release (int *) ;
 scalar_t__ os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int resize_env_buffer (struct compressor_data*,size_t) ;
 int sidechain_capture ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void compressor_update(void *data, obs_data_t *s)
{
 struct compressor_data *cd = data;

 const uint32_t sample_rate =
  audio_output_get_sample_rate(obs_get_audio());
 const size_t num_channels = audio_output_get_channels(obs_get_audio());
 const float attack_time_ms = (float)obs_data_get_int(s, S_ATTACK_TIME);
 const float release_time_ms =
  (float)obs_data_get_int(s, S_RELEASE_TIME);
 const float output_gain_db =
  (float)obs_data_get_double(s, S_OUTPUT_GAIN);
 const char *sidechain_name = obs_data_get_string(s, S_SIDECHAIN_SOURCE);

 cd->ratio = (float)obs_data_get_double(s, S_RATIO);
 cd->threshold = (float)obs_data_get_double(s, S_THRESHOLD);
 cd->attack_gain =
  gain_coefficient(sample_rate, attack_time_ms / MS_IN_S_F);
 cd->release_gain =
  gain_coefficient(sample_rate, release_time_ms / MS_IN_S_F);
 cd->output_gain = db_to_mul(output_gain_db);
 cd->num_channels = num_channels;
 cd->sample_rate = sample_rate;
 cd->slope = 1.0f - (1.0f / cd->ratio);

 bool valid_sidechain = *sidechain_name &&
          strcmp(sidechain_name, "none") != 0;
 obs_weak_source_t *old_weak_sidechain = ((void*)0);

 pthread_mutex_lock(&cd->sidechain_update_mutex);

 if (!valid_sidechain) {
  if (cd->weak_sidechain) {
   old_weak_sidechain = cd->weak_sidechain;
   cd->weak_sidechain = ((void*)0);
  }

  bfree(cd->sidechain_name);
  cd->sidechain_name = ((void*)0);

 } else {
  if (!cd->sidechain_name ||
      strcmp(cd->sidechain_name, sidechain_name) != 0) {
   if (cd->weak_sidechain) {
    old_weak_sidechain = cd->weak_sidechain;
    cd->weak_sidechain = ((void*)0);
   }

   bfree(cd->sidechain_name);
   cd->sidechain_name = bstrdup(sidechain_name);
   cd->sidechain_check_time = os_gettime_ns() - 3000000000;
  }
 }

 pthread_mutex_unlock(&cd->sidechain_update_mutex);

 if (old_weak_sidechain) {
  obs_source_t *old_sidechain =
   obs_weak_source_get_source(old_weak_sidechain);

  if (old_sidechain) {
   obs_source_remove_audio_capture_callback(
    old_sidechain, sidechain_capture, cd);
   obs_source_release(old_sidechain);
  }

  obs_weak_source_release(old_weak_sidechain);
 }

 size_t sample_len = sample_rate * DEFAULT_AUDIO_BUF_MS / MS_IN_S;
 if (cd->envelope_buf_len == 0)
  resize_env_buffer(cd, sample_len);
}
