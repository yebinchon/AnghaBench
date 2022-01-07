
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alsa_data {char const* device; unsigned int rate; scalar_t__ handle; scalar_t__ active; } ;
typedef int obs_data_t ;


 int _alsa_close (struct alsa_data*) ;
 int _alsa_try_open (struct alsa_data*) ;
 int bfree (char const*) ;
 char const* bstrdup (char const*) ;
 unsigned int obs_data_get_int (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 scalar_t__ strcmp (char const*,char const*) ;

void alsa_update(void *vptr, obs_data_t *settings)
{
 struct alsa_data *data = vptr;
 const char *device;
 unsigned int rate;
 bool reset = 0;

 device = obs_data_get_string(settings, "device_id");

 if (strcmp(device, "__custom__") == 0)
  device = obs_data_get_string(settings, "custom_pcm");

 if (strcmp(data->device, device) != 0) {
  bfree(data->device);
  data->device = bstrdup(device);
  reset = 1;
 }

 rate = obs_data_get_int(settings, "rate");
 if (data->rate != rate) {
  data->rate = rate;
  reset = 1;
 }
 if (reset) {
  if (data->handle)
   _alsa_close(data);
  _alsa_try_open(data);
 }

}
