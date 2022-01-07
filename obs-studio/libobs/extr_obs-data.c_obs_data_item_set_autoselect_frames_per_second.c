
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_frames_per_second {int dummy; } ;
typedef int obs_data_item_t ;


 int make_frames_per_second (struct media_frames_per_second,char const*) ;
 int obs_take_obj (int *,int **,int *,int ,int ) ;
 int set_item_auto ;

void obs_data_item_set_autoselect_frames_per_second(
 obs_data_item_t **item, struct media_frames_per_second fps,
 const char *option)
{
 obs_take_obj(((void*)0), item, ((void*)0), make_frames_per_second(fps, option),
       set_item_auto);
}
