
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct obs_view {int channels_mutex; struct obs_source** channels; } ;
struct obs_source {int dummy; } ;
struct calldata {int member_0; } ;
typedef struct obs_source obs_source_t ;
struct TYPE_3__ {struct obs_view main_view; } ;
struct TYPE_4__ {int signals; TYPE_1__ data; } ;


 int MAIN_VIEW ;
 size_t MAX_CHANNELS ;
 int assert (int) ;
 int calldata_free (struct calldata*) ;
 int calldata_get_ptr (struct calldata*,char*,struct obs_source**) ;
 int calldata_set_int (struct calldata*,char*,size_t) ;
 int calldata_set_ptr (struct calldata*,char*,struct obs_source*) ;
 TYPE_2__* obs ;
 int obs_source_activate (struct obs_source*,int ) ;
 int obs_source_addref (struct obs_source*) ;
 int obs_source_deactivate (struct obs_source*,int ) ;
 int obs_source_release (struct obs_source*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

void obs_set_output_source(uint32_t channel, obs_source_t *source)
{
 assert(channel < MAX_CHANNELS);

 if (!obs)
  return;
 if (channel >= MAX_CHANNELS)
  return;

 struct obs_source *prev_source;
 struct obs_view *view = &obs->data.main_view;
 struct calldata params = {0};

 pthread_mutex_lock(&view->channels_mutex);

 obs_source_addref(source);

 prev_source = view->channels[channel];

 calldata_set_int(&params, "channel", channel);
 calldata_set_ptr(&params, "prev_source", prev_source);
 calldata_set_ptr(&params, "source", source);
 signal_handler_signal(obs->signals, "channel_change", &params);
 calldata_get_ptr(&params, "source", &source);
 calldata_free(&params);

 view->channels[channel] = source;

 pthread_mutex_unlock(&view->channels_mutex);

 if (source)
  obs_source_activate(source, MAIN_VIEW);

 if (prev_source) {
  obs_source_deactivate(prev_source, MAIN_VIEW);
  obs_source_release(prev_source);
 }
}
