
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene_item {int dummy; } ;


 scalar_t__ apply_scene_item_volume (struct obs_scene_item*,int *,int ,size_t) ;

__attribute__((used)) static void process_all_audio_actions(struct obs_scene_item *item,
          size_t sample_rate)
{
 while (apply_scene_item_volume(item, ((void*)0), 0, sample_rate))
  ;
}
