
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct calldata {int dummy; } ;
typedef int stack ;
typedef int obs_source_t ;
struct TYPE_12__ {TYPE_2__* source; } ;
typedef TYPE_3__ obs_sceneitem_t ;
typedef TYPE_3__ obs_scene_t ;
struct TYPE_10__ {int signals; } ;
struct TYPE_11__ {TYPE_1__ context; } ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_3__*) ;
 TYPE_3__* obs_scene_add_internal (TYPE_3__*,int *,int *) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

obs_sceneitem_t *obs_scene_add(obs_scene_t *scene, obs_source_t *source)
{
 obs_sceneitem_t *item = obs_scene_add_internal(scene, source, ((void*)0));
 struct calldata params;
 uint8_t stack[128];

 calldata_init_fixed(&params, stack, sizeof(stack));
 calldata_set_ptr(&params, "scene", scene);
 calldata_set_ptr(&params, "item", item);
 signal_handler_signal(scene->source->context.signals, "item_add",
         &params);
 return item;
}
