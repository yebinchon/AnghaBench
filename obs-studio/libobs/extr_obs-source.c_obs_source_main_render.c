
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_8__ {int output_flags; int (* video_render ) (scalar_t__,int *) ;} ;
struct TYPE_9__ {scalar_t__ num; } ;
struct TYPE_10__ {TYPE_1__ context; TYPE_2__ info; TYPE_3__ filters; int filter_parent; } ;
typedef TYPE_4__ obs_source_t ;


 int OBS_SOURCE_CUSTOM_DRAW ;
 int * gs_get_effect () ;
 int obs_source_default_render (TYPE_4__*) ;
 int stub1 (scalar_t__,int *) ;

__attribute__((used)) static inline void obs_source_main_render(obs_source_t *source)
{
 uint32_t flags = source->info.output_flags;
 bool custom_draw = (flags & OBS_SOURCE_CUSTOM_DRAW) != 0;
 bool default_effect = !source->filter_parent &&
         source->filters.num == 0 && !custom_draw;

 if (default_effect)
  obs_source_default_render(source);
 else if (source->context.data)
  source->info.video_render(source->context.data,
       custom_draw ? ((void*)0) : gs_get_effect());
}
