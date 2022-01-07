
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int output_flags; scalar_t__ type; } ;
struct obs_source {void* push_to_talk_key; void* push_to_mute_key; void* mute_unmute_key; TYPE_2__ info; } ;
struct TYPE_4__ {int push_to_talk; int push_to_mute; int unmute; int mute; } ;
struct TYPE_6__ {TYPE_1__ hotkeys; } ;


 void* OBS_INVALID_HOTKEY_ID ;
 int OBS_SOURCE_AUDIO ;
 scalar_t__ OBS_SOURCE_TYPE_INPUT ;
 TYPE_3__* obs ;
 void* obs_hotkey_pair_register_source (struct obs_source*,char*,int ,char*,int ,int ,int ,struct obs_source*,struct obs_source*) ;
 void* obs_hotkey_register_source (struct obs_source*,char*,int ,int ,struct obs_source*) ;
 int obs_source_hotkey_mute ;
 int obs_source_hotkey_push_to_mute ;
 int obs_source_hotkey_push_to_talk ;
 int obs_source_hotkey_unmute ;

__attribute__((used)) static void obs_source_init_audio_hotkeys(struct obs_source *source)
{
 if (!(source->info.output_flags & OBS_SOURCE_AUDIO) ||
     source->info.type != OBS_SOURCE_TYPE_INPUT) {
  source->mute_unmute_key = OBS_INVALID_HOTKEY_ID;
  source->push_to_talk_key = OBS_INVALID_HOTKEY_ID;
  return;
 }

 source->mute_unmute_key = obs_hotkey_pair_register_source(
  source, "libobs.mute", obs->hotkeys.mute, "libobs.unmute",
  obs->hotkeys.unmute, obs_source_hotkey_mute,
  obs_source_hotkey_unmute, source, source);

 source->push_to_mute_key = obs_hotkey_register_source(
  source, "libobs.push-to-mute", obs->hotkeys.push_to_mute,
  obs_source_hotkey_push_to_mute, source);

 source->push_to_talk_key = obs_hotkey_register_source(
  source, "libobs.push-to-talk", obs->hotkeys.push_to_talk,
  obs_source_hotkey_push_to_talk, source);
}
