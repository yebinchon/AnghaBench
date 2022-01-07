
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int settings; scalar_t__ data; } ;
struct TYPE_5__ {int (* update ) (scalar_t__,int ) ;} ;
struct TYPE_7__ {int defer_update; TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_source_t ;


 int stub1 (scalar_t__,int ) ;

__attribute__((used)) static void obs_source_deferred_update(obs_source_t *source)
{
 if (source->context.data && source->info.update)
  source->info.update(source->context.data,
        source->context.settings);

 source->defer_update = 0;
}
