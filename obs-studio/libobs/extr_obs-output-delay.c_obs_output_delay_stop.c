
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct delay_data {int ts; int msg; } ;
struct TYPE_4__ {int delay_mutex; int delay_data; } ;
typedef TYPE_1__ obs_output_t ;
typedef int dd ;


 int DELAY_MSG_STOP ;
 int circlebuf_push_back (int *,struct delay_data*,int) ;
 int do_output_signal (TYPE_1__*,char*) ;
 int os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_output_delay_stop(obs_output_t *output)
{
 struct delay_data dd = {
  .msg = DELAY_MSG_STOP,
  .ts = os_gettime_ns(),
 };

 pthread_mutex_lock(&output->delay_mutex);
 circlebuf_push_back(&output->delay_data, &dd, sizeof(dd));
 pthread_mutex_unlock(&output->delay_mutex);

 do_output_signal(output, "stopping");
}
