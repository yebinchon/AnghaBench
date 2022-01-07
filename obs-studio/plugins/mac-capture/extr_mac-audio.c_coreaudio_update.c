
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int device_uid; } ;
typedef int obs_data_t ;


 int bfree (int ) ;
 int bstrdup (int ) ;
 int coreaudio_shutdown (struct coreaudio_data*) ;
 int coreaudio_try_init (struct coreaudio_data*) ;
 int obs_data_get_string (int *,char*) ;

__attribute__((used)) static void coreaudio_update(void *data, obs_data_t *settings)
{
 struct coreaudio_data *ca = data;

 coreaudio_shutdown(ca);

 bfree(ca->device_uid);
 ca->device_uid = bstrdup(obs_data_get_string(settings, "device_id"));

 coreaudio_try_init(ca);
}
