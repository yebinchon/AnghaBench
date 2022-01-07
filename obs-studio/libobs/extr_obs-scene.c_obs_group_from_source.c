
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * data; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_source_t ;
typedef int obs_scene_t ;
struct TYPE_9__ {scalar_t__ id; } ;


 TYPE_5__ group_info ;

obs_scene_t *obs_group_from_source(const obs_source_t *source)
{
 if (!source || source->info.id != group_info.id)
  return ((void*)0);

 return source->context.data;
}
