
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_frames_per_second {int dummy; } ;
typedef int obs_data_t ;


 int make_frames_per_second (struct media_frames_per_second,char const*) ;
 int obs_take_obj (int *,int *,char const*,int ,int ) ;
 int set_item_def ;

void obs_data_set_default_frames_per_second(obs_data_t *data, const char *name,
         struct media_frames_per_second fps,
         const char *option)
{
 obs_take_obj(data, ((void*)0), name, make_frames_per_second(fps, option),
       set_item_def);
}
