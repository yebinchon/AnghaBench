
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int private; } ;
struct TYPE_9__ {TYPE_1__ context; } ;
typedef TYPE_2__ obs_source_t ;


 int duplicate_filters (TYPE_2__*,TYPE_2__*,int ) ;
 int obs_source_valid (TYPE_2__*,char*) ;

void obs_source_copy_filters(obs_source_t *dst, obs_source_t *src)
{
 if (!obs_source_valid(dst, "obs_source_copy_filters"))
  return;
 if (!obs_source_valid(src, "obs_source_copy_filters"))
  return;

 duplicate_filters(dst, src, dst->context.private);
}
