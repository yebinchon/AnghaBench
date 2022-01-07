
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pause_data {int mutex; scalar_t__ ts_offset; scalar_t__ ts_end; scalar_t__ ts_start; scalar_t__ last_video_ts; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void pause_reset(struct pause_data *pause)
{
 pthread_mutex_lock(&pause->mutex);
 pause->last_video_ts = 0;
 pause->ts_start = 0;
 pause->ts_end = 0;
 pause->ts_offset = 0;
 pthread_mutex_unlock(&pause->mutex);
}
