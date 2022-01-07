
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int source; } ;
typedef TYPE_1__ obs_scene_t ;


 int obs_source_release (int ) ;

void obs_scene_release(obs_scene_t *scene)
{
 if (scene)
  obs_source_release(scene->source);
}
