
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_source {int source; } ;
typedef int obs_hotkey_t ;
typedef int * obs_hotkey_id ;


 int UNUSED_PARAMETER (int *) ;
 scalar_t__ obs_source_active (int ) ;
 int vlcs_restart (struct vlc_source*) ;

__attribute__((used)) static void vlcs_restart_hotkey(void *data, obs_hotkey_id id,
    obs_hotkey_t *hotkey, bool pressed)
{
 UNUSED_PARAMETER(id);
 UNUSED_PARAMETER(hotkey);

 struct vlc_source *c = data;

 if (pressed && obs_source_active(c->source))
  vlcs_restart(c);
}
