
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct audio_action {int type; int set; int vol; } ;
struct TYPE_3__ {int push_to_mute_pressed; int push_to_talk_pressed; int muted; int volume; } ;
typedef TYPE_1__ obs_source_t ;







__attribute__((used)) static inline void apply_audio_action(obs_source_t *source,
          const struct audio_action *action)
{
 switch (action->type) {
 case 128:
  source->volume = action->vol;
  break;
 case 131:
  source->muted = action->set;
  break;
 case 129:
  source->push_to_talk_pressed = action->set;
  break;
 case 130:
  source->push_to_mute_pressed = action->set;
  break;
 }
}
