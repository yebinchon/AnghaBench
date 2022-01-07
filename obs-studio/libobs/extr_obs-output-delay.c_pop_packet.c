
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ size; } ;
struct obs_output {int delay_cur_flags; scalar_t__ active_delay_ns; int delay_mutex; TYPE_1__ delay_data; scalar_t__ reconnecting; } ;
struct delay_data {scalar_t__ ts; } ;
typedef int dd ;


 int OBS_OUTPUT_DELAY_PRESERVE ;
 int circlebuf_peek_front (TYPE_1__*,struct delay_data*,int) ;
 int circlebuf_pop_front (TYPE_1__*,int *,int) ;
 int process_delay_data (struct obs_output*,struct delay_data*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline bool pop_packet(struct obs_output *output, uint64_t t)
{
 uint64_t elapsed_time;
 struct delay_data dd;
 bool popped = 0;
 bool preserve;



 preserve = (output->delay_cur_flags & OBS_OUTPUT_DELAY_PRESERVE) != 0;

 pthread_mutex_lock(&output->delay_mutex);

 if (output->delay_data.size) {
  circlebuf_peek_front(&output->delay_data, &dd, sizeof(dd));
  elapsed_time = (t - dd.ts);

  if (preserve && output->reconnecting) {
   output->active_delay_ns = elapsed_time;

  } else if (elapsed_time > output->active_delay_ns) {
   circlebuf_pop_front(&output->delay_data, ((void*)0),
         sizeof(dd));
   popped = 1;
  }
 }

 pthread_mutex_unlock(&output->delay_mutex);



 if (popped)
  process_delay_data(output, &dd);

 return popped;
}
