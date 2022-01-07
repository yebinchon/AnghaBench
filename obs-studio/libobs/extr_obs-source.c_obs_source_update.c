
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int settings; scalar_t__ data; } ;
struct TYPE_7__ {int output_flags; int (* update ) (scalar_t__,int ) ;} ;
struct TYPE_8__ {int defer_update; TYPE_1__ context; TYPE_2__ info; } ;
typedef TYPE_3__ obs_source_t ;
typedef int obs_data_t ;


 int OBS_SOURCE_VIDEO ;
 int obs_data_apply (int ,int *) ;
 int obs_source_valid (TYPE_3__*,char*) ;
 int stub1 (scalar_t__,int ) ;

void obs_source_update(obs_source_t *source, obs_data_t *settings)
{
 if (!obs_source_valid(source, "obs_source_update"))
  return;

 if (settings)
  obs_data_apply(source->context.settings, settings);

 if (source->info.output_flags & OBS_SOURCE_VIDEO) {
  source->defer_update = 1;
 } else if (source->context.data && source->info.update) {
  source->info.update(source->context.data,
        source->context.settings);
 }
}
