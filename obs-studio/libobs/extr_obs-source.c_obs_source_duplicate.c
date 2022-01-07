
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int output_flags; scalar_t__ type; int id; } ;
struct TYPE_15__ {int * settings; } ;
struct TYPE_17__ {TYPE_2__ info; int * private_settings; int flags; int muted; int volume; int user_muted; int user_volume; int sync_offset; int audio_mixers; TYPE_1__ context; } ;
typedef TYPE_3__ obs_source_t ;
typedef int obs_scene_t ;
typedef int obs_data_t ;


 int OBS_SCENE_DUP_COPY ;
 int OBS_SCENE_DUP_PRIVATE_COPY ;
 int OBS_SOURCE_DO_NOT_DUPLICATE ;
 scalar_t__ OBS_SOURCE_TYPE_FILTER ;
 scalar_t__ OBS_SOURCE_TYPE_SCENE ;
 int duplicate_filters (TYPE_3__*,TYPE_3__*,int) ;
 int obs_data_apply (int *,int *) ;
 int * obs_data_create () ;
 int obs_data_release (int *) ;
 int * obs_group_from_source (TYPE_3__*) ;
 int * obs_scene_duplicate (int *,char const*,int ) ;
 int * obs_scene_from_source (TYPE_3__*) ;
 TYPE_3__* obs_scene_get_source (int *) ;
 int obs_source_addref (TYPE_3__*) ;
 TYPE_3__* obs_source_create (int ,char const*,int *,int *) ;
 TYPE_3__* obs_source_create_private (int ,char const*,int *) ;
 int obs_source_valid (TYPE_3__*,char*) ;

obs_source_t *obs_source_duplicate(obs_source_t *source, const char *new_name,
       bool create_private)
{
 obs_source_t *new_source;
 obs_data_t *settings;

 if (!obs_source_valid(source, "obs_source_duplicate"))
  return ((void*)0);

 if ((source->info.output_flags & OBS_SOURCE_DO_NOT_DUPLICATE) != 0) {
  obs_source_addref(source);
  return source;
 }

 if (source->info.type == OBS_SOURCE_TYPE_SCENE) {
  obs_scene_t *scene = obs_scene_from_source(source);
  if (!scene)
   scene = obs_group_from_source(source);
  if (!scene)
   return ((void*)0);

  obs_scene_t *new_scene = obs_scene_duplicate(
   scene, new_name,
   create_private ? OBS_SCENE_DUP_PRIVATE_COPY
           : OBS_SCENE_DUP_COPY);
  obs_source_t *new_source = obs_scene_get_source(new_scene);
  return new_source;
 }

 settings = obs_data_create();
 obs_data_apply(settings, source->context.settings);

 new_source = create_private
        ? obs_source_create_private(source->info.id,
        new_name, settings)
        : obs_source_create(source->info.id, new_name,
       settings, ((void*)0));

 new_source->audio_mixers = source->audio_mixers;
 new_source->sync_offset = source->sync_offset;
 new_source->user_volume = source->user_volume;
 new_source->user_muted = source->user_muted;
 new_source->volume = source->volume;
 new_source->muted = source->muted;
 new_source->flags = source->flags;

 obs_data_apply(new_source->private_settings, source->private_settings);

 if (source->info.type != OBS_SOURCE_TYPE_FILTER)
  duplicate_filters(new_source, source, create_private);

 obs_data_release(settings);
 return new_source;
}
