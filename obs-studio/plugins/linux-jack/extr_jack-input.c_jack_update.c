
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jack_data {int start_jack_server; int channels; scalar_t__ device; int source; } ;
typedef int obs_data_t ;


 int bfree (scalar_t__) ;
 scalar_t__ bstrdup (char const*) ;
 int deactivate_jack (struct jack_data*) ;
 scalar_t__ jack_init (struct jack_data*) ;
 int obs_data_get_bool (int *,char*) ;
 int obs_data_get_int (int *,char*) ;
 char* obs_source_get_name (int ) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static void jack_update(void *vptr, obs_data_t *settings)
{
 struct jack_data *data = (struct jack_data *)vptr;
 if (!data)
  return;

 const char *new_device;
 bool settings_changed = 0;
 bool new_jack_start_server = obs_data_get_bool(settings, "startjack");
 int new_channel_count = obs_data_get_int(settings, "channels");

 if (new_jack_start_server != data->start_jack_server) {
  data->start_jack_server = new_jack_start_server;
  settings_changed = 1;
 }

 if (new_channel_count != data->channels)




  settings_changed = 1;

 new_device = obs_source_get_name(data->source);
 if (!data->device || strcmp(data->device, new_device) != 0) {
  if (data->device)
   bfree(data->device);
  data->device = bstrdup(new_device);
  settings_changed = 1;
 }

 if (settings_changed) {
  deactivate_jack(data);

  data->channels = new_channel_count;

  if (jack_init(data) != 0) {
   deactivate_jack(data);
  }
 }
}
