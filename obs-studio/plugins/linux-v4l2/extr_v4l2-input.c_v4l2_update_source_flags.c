
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_data {int source; } ;
typedef int obs_data_t ;


 int obs_data_get_bool (int *,char*) ;
 int obs_source_set_async_unbuffered (int ,int) ;

__attribute__((used)) static void v4l2_update_source_flags(struct v4l2_data *data,
         obs_data_t *settings)
{
 obs_source_set_async_unbuffered(
  data->source, !obs_data_get_bool(settings, "buffering"));
}
