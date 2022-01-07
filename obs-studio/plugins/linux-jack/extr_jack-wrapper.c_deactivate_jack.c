
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jack_data {int channels; int jack_mutex; int * jack_client; int ** jack_ports; } ;


 int bfree (int **) ;
 int jack_client_close (int *) ;
 int jack_port_unregister (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void deactivate_jack(struct jack_data *data)
{
 pthread_mutex_lock(&data->jack_mutex);

 if (data->jack_client) {
  if (data->jack_ports != ((void*)0)) {
   for (int i = 0; i < data->channels; ++i) {
    if (data->jack_ports[i] != ((void*)0))
     jack_port_unregister(
      data->jack_client,
      data->jack_ports[i]);
   }
   bfree(data->jack_ports);
   data->jack_ports = ((void*)0);
  }
  jack_client_close(data->jack_client);
  data->jack_client = ((void*)0);
 }
 pthread_mutex_unlock(&data->jack_mutex);
}
