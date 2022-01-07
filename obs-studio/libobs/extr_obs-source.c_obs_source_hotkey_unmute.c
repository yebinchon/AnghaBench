
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source {int dummy; } ;
typedef int obs_hotkey_t ;
typedef int * obs_hotkey_pair_id ;


 int UNUSED_PARAMETER (int *) ;
 int obs_source_muted (struct obs_source*) ;
 int obs_source_set_muted (struct obs_source*,int) ;

__attribute__((used)) static bool obs_source_hotkey_unmute(void *data, obs_hotkey_pair_id id,
         obs_hotkey_t *key, bool pressed)
{
 UNUSED_PARAMETER(id);
 UNUSED_PARAMETER(key);

 struct obs_source *source = data;

 if (!pressed || !obs_source_muted(source))
  return 0;

 obs_source_set_muted(source, 0);
 return 1;
}
