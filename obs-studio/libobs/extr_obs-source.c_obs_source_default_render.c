
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_7__ {int (* video_render ) (scalar_t__,int *) ;} ;
struct TYPE_10__ {TYPE_3__ context; TYPE_1__ info; } ;
typedef TYPE_4__ obs_source_t ;
typedef int gs_technique_t ;
typedef int gs_effect_t ;
struct TYPE_8__ {int * default_effect; } ;
struct TYPE_11__ {TYPE_2__ video; } ;


 int * gs_effect_get_technique (int *,char*) ;
 size_t gs_technique_begin (int *) ;
 int gs_technique_begin_pass (int *,size_t) ;
 int gs_technique_end (int *) ;
 int gs_technique_end_pass (int *) ;
 TYPE_6__* obs ;
 int stub1 (scalar_t__,int *) ;

void obs_source_default_render(obs_source_t *source)
{
 gs_effect_t *effect = obs->video.default_effect;
 gs_technique_t *tech = gs_effect_get_technique(effect, "Draw");
 size_t passes, i;

 passes = gs_technique_begin(tech);
 for (i = 0; i < passes; i++) {
  gs_technique_begin_pass(tech, i);
  if (source->context.data)
   source->info.video_render(source->context.data, effect);
  gs_technique_end_pass(tech);
 }
 gs_technique_end(tech);
}
