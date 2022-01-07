
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct obs_source_info {scalar_t__ type; int (* create ) (int ,struct obs_source*) ;int type_data; int (* get_defaults2 ) (int ,int ) ;int (* get_defaults ) (int ) ;int id; } ;
struct TYPE_2__ {int data; int settings; } ;
struct obs_source {int owns_info_id; int enabled; int default_flags; int flags; TYPE_1__ context; int last_obs_ver; void* push_to_talk_key; void* push_to_mute_key; int mute_unmute_key; struct obs_source_info info; } ;
typedef struct obs_source obs_source_t ;
typedef int obs_data_t ;


 int LOG_DEBUG ;
 int LOG_ERROR ;
 void* OBS_INVALID_HOTKEY_ID ;
 int OBS_INVALID_HOTKEY_PAIR_ID ;
 scalar_t__ OBS_SOURCE_TYPE_FILTER ;
 int blog (int ,char*,...) ;
 int bstrdup (char const*) ;
 struct obs_source* bzalloc (int) ;
 struct obs_source_info* get_source_info (char const*) ;
 int obs_source_destroy (struct obs_source*) ;
 int obs_source_dosignal (struct obs_source*,char*,int *) ;
 int obs_source_init (struct obs_source*) ;
 int obs_source_init_audio_hotkeys (struct obs_source*) ;
 int obs_source_init_context (struct obs_source*,int *,char const*,int *,int) ;
 int obs_source_init_finalize (struct obs_source*) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,struct obs_source*) ;

__attribute__((used)) static obs_source_t *
obs_source_create_internal(const char *id, const char *name,
      obs_data_t *settings, obs_data_t *hotkey_data,
      bool private, uint32_t last_obs_ver)
{
 struct obs_source *source = bzalloc(sizeof(struct obs_source));

 const struct obs_source_info *info = get_source_info(id);
 if (!info) {
  blog(LOG_ERROR, "Source ID '%s' not found", id);

  source->info.id = bstrdup(id);
  source->owns_info_id = 1;
 } else {
  source->info = *info;





  if (info->type == OBS_SOURCE_TYPE_FILTER)
  private
  = 1;
 }

 source->mute_unmute_key = OBS_INVALID_HOTKEY_PAIR_ID;
 source->push_to_mute_key = OBS_INVALID_HOTKEY_ID;
 source->push_to_talk_key = OBS_INVALID_HOTKEY_ID;
 source->last_obs_ver = last_obs_ver;

 if (!obs_source_init_context(source, settings, name, hotkey_data,
         private))
  goto fail;

 if (info) {
  if (info->get_defaults) {
   info->get_defaults(source->context.settings);
  }
  if (info->get_defaults2) {
   info->get_defaults2(info->type_data,
         source->context.settings);
  }
 }

 if (!obs_source_init(source))
  goto fail;

 if (!private)
  obs_source_init_audio_hotkeys(source);



 if (info && info->create)
  source->context.data =
   info->create(source->context.settings, source);
 if ((!info || info->create) && !source->context.data)
  blog(LOG_ERROR, "Failed to create source '%s'!", name);

 blog(LOG_DEBUG, "%ssource '%s' (%s) created", private ? "private " : "",
      name, id);

 source->flags = source->default_flags;
 source->enabled = 1;

 if (!private) {
  obs_source_dosignal(source, "source_create", ((void*)0));
 }

 obs_source_init_finalize(source);
 return source;

fail:
 blog(LOG_ERROR, "obs_source_create failed");
 obs_source_destroy(source);
 return ((void*)0);
}
