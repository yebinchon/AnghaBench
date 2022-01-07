
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct compressor_data {int sidechain_check_time; int sidechain_update_mutex; int * weak_sidechain; scalar_t__ sidechain_name; } ;
typedef int obs_weak_source_t ;
typedef int obs_source_t ;


 int UNUSED_PARAMETER (float) ;
 int bfree (char*) ;
 char* bstrdup (scalar_t__) ;
 int * obs_get_source_by_name (char*) ;
 int obs_source_add_audio_capture_callback (int *,int ,struct compressor_data*) ;
 int * obs_source_get_weak_source (int *) ;
 int obs_source_release (int *) ;
 int obs_weak_source_release (int *) ;
 int os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sidechain_capture ;
 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static void compressor_tick(void *data, float seconds)
{
 struct compressor_data *cd = data;
 char *new_name = ((void*)0);

 pthread_mutex_lock(&cd->sidechain_update_mutex);

 if (cd->sidechain_name && !cd->weak_sidechain) {
  uint64_t t = os_gettime_ns();

  if (t - cd->sidechain_check_time > 3000000000) {
   new_name = bstrdup(cd->sidechain_name);
   cd->sidechain_check_time = t;
  }
 }

 pthread_mutex_unlock(&cd->sidechain_update_mutex);

 if (new_name) {
  obs_source_t *sidechain =
   new_name && *new_name ? obs_get_source_by_name(new_name)
           : ((void*)0);
  obs_weak_source_t *weak_sidechain =
   sidechain ? obs_source_get_weak_source(sidechain)
      : ((void*)0);

  pthread_mutex_lock(&cd->sidechain_update_mutex);

  if (cd->sidechain_name &&
      strcmp(cd->sidechain_name, new_name) == 0) {
   cd->weak_sidechain = weak_sidechain;
   weak_sidechain = ((void*)0);
  }

  pthread_mutex_unlock(&cd->sidechain_update_mutex);

  if (sidechain) {
   obs_source_add_audio_capture_callback(
    sidechain, sidechain_capture, cd);

   obs_weak_source_release(weak_sidechain);
   obs_source_release(sidechain);
  }

  bfree(new_name);
 }

 UNUSED_PARAMETER(seconds);
}
