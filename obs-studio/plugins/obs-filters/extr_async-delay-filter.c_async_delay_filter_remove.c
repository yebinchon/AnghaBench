
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_delay_data {int dummy; } ;
typedef int obs_source_t ;


 int free_audio_data (struct async_delay_data*) ;
 int free_video_data (struct async_delay_data*,int *) ;

__attribute__((used)) static void async_delay_filter_remove(void *data, obs_source_t *parent)
{
 struct async_delay_data *filter = data;

 free_video_data(filter, parent);
 free_audio_data(filter);
}
