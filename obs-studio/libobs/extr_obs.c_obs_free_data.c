
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_data {int valid; int private_data; int tick_callbacks; int draw_callbacks; int draw_callbacks_mutex; int services_mutex; int encoders_mutex; int outputs_mutex; int displays_mutex; int audio_sources_mutex; int sources_mutex; int main_view; } ;
struct TYPE_2__ {struct obs_core_data data; } ;


 int FREE_OBS_LINKED_LIST (int ) ;
 int LOG_INFO ;
 int blog (int ,char*) ;
 int da_free (int ) ;
 int display ;
 int encoder ;
 TYPE_1__* obs ;
 int obs_data_release (int ) ;
 int obs_main_view_free (int *) ;
 int output ;
 int pthread_mutex_destroy (int *) ;
 int service ;
 int source ;

__attribute__((used)) static void obs_free_data(void)
{
 struct obs_core_data *data = &obs->data;

 data->valid = 0;

 obs_main_view_free(&data->main_view);

 blog(LOG_INFO, "Freeing OBS context data");

 FREE_OBS_LINKED_LIST(source);
 FREE_OBS_LINKED_LIST(output);
 FREE_OBS_LINKED_LIST(encoder);
 FREE_OBS_LINKED_LIST(display);
 FREE_OBS_LINKED_LIST(service);

 pthread_mutex_destroy(&data->sources_mutex);
 pthread_mutex_destroy(&data->audio_sources_mutex);
 pthread_mutex_destroy(&data->displays_mutex);
 pthread_mutex_destroy(&data->outputs_mutex);
 pthread_mutex_destroy(&data->encoders_mutex);
 pthread_mutex_destroy(&data->services_mutex);
 pthread_mutex_destroy(&data->draw_callbacks_mutex);
 da_free(data->draw_callbacks);
 da_free(data->tick_callbacks);
 obs_data_release(data->private_data);
}
