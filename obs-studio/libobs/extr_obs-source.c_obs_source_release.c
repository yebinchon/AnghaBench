
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ obs_weak_source_t ;
struct TYPE_7__ {TYPE_1__* control; } ;
typedef TYPE_2__ obs_source_t ;


 int LOG_WARNING ;
 int blog (int ,char*) ;
 int obs ;
 scalar_t__ obs_ref_release (int *) ;
 int obs_source_destroy (TYPE_2__*) ;
 int obs_weak_source_release (TYPE_1__*) ;

void obs_source_release(obs_source_t *source)
{
 if (!obs) {
  blog(LOG_WARNING, "Tried to release a source when the OBS "
      "core is shut down!");
  return;
 }

 if (!source)
  return;

 obs_weak_source_t *control = source->control;
 if (obs_ref_release(&control->ref)) {
  obs_source_destroy(source);
  obs_weak_source_release(control);
 }
}
