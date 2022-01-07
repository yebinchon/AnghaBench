
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ array; } ;
struct file_download_data {TYPE_1__ buffer; } ;


 int UNUSED_PARAMETER (void*) ;
 int ingests_loaded ;
 int ingests_refreshed ;
 int load_ingests (char const*,int) ;
 int mutex ;
 int os_atomic_set_bool (int *,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static bool twitch_ingest_update(void *param, struct file_download_data *data)
{
 bool success;

 pthread_mutex_lock(&mutex);
 success = load_ingests((const char *)data->buffer.array, 1);
 pthread_mutex_unlock(&mutex);

 if (success) {
  os_atomic_set_bool(&ingests_refreshed, 1);
  os_atomic_set_bool(&ingests_loaded, 1);
 }

 UNUSED_PARAMETER(param);
 return 1;
}
