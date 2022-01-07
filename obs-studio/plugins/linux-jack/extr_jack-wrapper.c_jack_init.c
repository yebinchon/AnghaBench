
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jack_data {int channels; int jack_mutex; int * jack_client; int ** jack_ports; int device; scalar_t__ start_jack_server; } ;
typedef int port_name ;
typedef int jack_port_t ;
typedef int jack_options_t ;
typedef int int_fast32_t ;


 int JACK_DEFAULT_AUDIO_TYPE ;
 int JackNoStartServer ;
 int JackNullOption ;
 int JackPortIsInput ;
 int LOG_ERROR ;
 int blog (int ,char*,...) ;
 scalar_t__ bzalloc (int) ;
 scalar_t__ jack_activate (int *) ;
 int * jack_client_open (int ,int ,int ) ;
 int * jack_port_register (int *,char*,int ,int ,int ) ;
 int jack_process_callback ;
 scalar_t__ jack_set_process_callback (int *,int ,struct jack_data*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int snprintf (char*,int,char*,unsigned int) ;

int_fast32_t jack_init(struct jack_data *data)
{
 pthread_mutex_lock(&data->jack_mutex);

 if (data->jack_client != ((void*)0))
  goto good;

 jack_options_t jack_option =
  data->start_jack_server ? JackNullOption : JackNoStartServer;

 data->jack_client = jack_client_open(data->device, jack_option, 0);
 if (data->jack_client == ((void*)0)) {
  blog(LOG_ERROR,
       "jack_client_open Error:"
       "Could not create JACK client! %s",
       data->device);
  goto error;
 }

 data->jack_ports =
  (jack_port_t **)bzalloc(sizeof(jack_port_t *) * data->channels);
 for (unsigned int i = 0; i < data->channels; ++i) {
  char port_name[10] = {'\0'};
  snprintf(port_name, sizeof(port_name), "in_%u", i + 1);

  data->jack_ports[i] = jack_port_register(
   data->jack_client, port_name, JACK_DEFAULT_AUDIO_TYPE,
   JackPortIsInput, 0);
  if (data->jack_ports[i] == ((void*)0)) {
   blog(LOG_ERROR,
        "jack_port_register Error:"
        "Could not create JACK port! %s",
        port_name);
   goto error;
  }
 }

 if (jack_set_process_callback(data->jack_client, jack_process_callback,
          data) != 0) {
  blog(LOG_ERROR, "jack_set_process_callback Error");
  goto error;
 }

 if (jack_activate(data->jack_client) != 0) {
  blog(LOG_ERROR, "jack_activate Error:"
    "Could not activate JACK client!");
  goto error;
 }

good:
 pthread_mutex_unlock(&data->jack_mutex);
 return 0;

error:
 pthread_mutex_unlock(&data->jack_mutex);
 return 1;
}
