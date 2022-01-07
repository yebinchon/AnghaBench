
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_source {int source; } ;
typedef int obs_hotkey_t ;
typedef int obs_hotkey_id ;


 int UNUSED_PARAMETER (int) ;
 int ffmpeg_source_start (struct ffmpeg_source*) ;
 scalar_t__ obs_source_active (int ) ;

__attribute__((used)) static void restart_hotkey(void *data, obs_hotkey_id id, obs_hotkey_t *hotkey,
      bool pressed)
{
 UNUSED_PARAMETER(id);
 UNUSED_PARAMETER(hotkey);
 UNUSED_PARAMETER(pressed);

 struct ffmpeg_source *s = data;
 if (obs_source_active(s->source))
  ffmpeg_source_start(s);
}
