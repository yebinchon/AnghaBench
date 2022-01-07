
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ push_to_mute_stop_time; int push_to_mute_delay; scalar_t__ push_to_talk_stop_time; int push_to_talk_delay; scalar_t__ push_to_talk_enabled; scalar_t__ push_to_mute_enabled; scalar_t__ user_muted; int enabled; scalar_t__ user_push_to_talk_pressed; scalar_t__ user_push_to_mute_pressed; } ;
typedef TYPE_1__ obs_source_t ;



__attribute__((used)) static inline bool source_muted(obs_source_t *source, uint64_t os_time)
{
 if (source->push_to_mute_enabled && source->user_push_to_mute_pressed)
  source->push_to_mute_stop_time =
   os_time + source->push_to_mute_delay * 1000000;

 if (source->push_to_talk_enabled && source->user_push_to_talk_pressed)
  source->push_to_talk_stop_time =
   os_time + source->push_to_talk_delay * 1000000;

 bool push_to_mute_active = source->user_push_to_mute_pressed ||
       os_time < source->push_to_mute_stop_time;
 bool push_to_talk_active = source->user_push_to_talk_pressed ||
       os_time < source->push_to_talk_stop_time;

 return !source->enabled || source->user_muted ||
        (source->push_to_mute_enabled && push_to_mute_active) ||
        (source->push_to_talk_enabled && !push_to_talk_active);
}
