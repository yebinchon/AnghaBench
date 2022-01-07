
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slideshow {int source; } ;
typedef int obs_hotkey_t ;
typedef int * obs_hotkey_id ;


 int UNUSED_PARAMETER (int *) ;
 scalar_t__ obs_source_active (int ) ;
 int ss_play_pause (struct slideshow*) ;

__attribute__((used)) static void play_pause_hotkey(void *data, obs_hotkey_id id,
         obs_hotkey_t *hotkey, bool pressed)
{
 UNUSED_PARAMETER(id);
 UNUSED_PARAMETER(hotkey);

 struct slideshow *ss = data;

 if (pressed && obs_source_active(ss->source))
  ss_play_pause(ss);
}
