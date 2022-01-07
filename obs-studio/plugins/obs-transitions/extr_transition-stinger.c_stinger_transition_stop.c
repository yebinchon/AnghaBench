
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stinger_info {int transitioning; scalar_t__ media_source; int source; } ;


 int obs_source_remove_active_child (int ,scalar_t__) ;

__attribute__((used)) static void stinger_transition_stop(void *data)
{
 struct stinger_info *s = data;

 if (s->media_source)
  obs_source_remove_active_child(s->source, s->media_source);

 s->transitioning = 0;
}
