
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressor_data {struct compressor_data* envelope_buf; struct compressor_data* sidechain_name; int sidechain_update_mutex; int sidechain_mutex; struct compressor_data** sidechain_buf; int * sidechain_data; scalar_t__ weak_sidechain; } ;
typedef int obs_source_t ;


 size_t MAX_AUDIO_CHANNELS ;
 int bfree (struct compressor_data*) ;
 int circlebuf_free (int *) ;
 int * get_sidechain (struct compressor_data*) ;
 int obs_source_release (int *) ;
 int obs_source_remove_audio_capture_callback (int *,int ,struct compressor_data*) ;
 int obs_weak_source_release (scalar_t__) ;
 int pthread_mutex_destroy (int *) ;
 int sidechain_capture ;

__attribute__((used)) static void compressor_destroy(void *data)
{
 struct compressor_data *cd = data;

 if (cd->weak_sidechain) {
  obs_source_t *sidechain = get_sidechain(cd);
  if (sidechain) {
   obs_source_remove_audio_capture_callback(
    sidechain, sidechain_capture, cd);
   obs_source_release(sidechain);
  }

  obs_weak_source_release(cd->weak_sidechain);
 }

 for (size_t i = 0; i < MAX_AUDIO_CHANNELS; i++) {
  circlebuf_free(&cd->sidechain_data[i]);
  bfree(cd->sidechain_buf[i]);
 }
 pthread_mutex_destroy(&cd->sidechain_mutex);
 pthread_mutex_destroy(&cd->sidechain_update_mutex);

 bfree(cd->sidechain_name);
 bfree(cd->envelope_buf);
 bfree(cd);
}
