
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int settings; int data; } ;
struct TYPE_7__ {int (* save ) (int ,int ) ;} ;
struct TYPE_9__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_source_t ;


 int data_valid (TYPE_3__*,char*) ;
 int obs_source_dosignal (TYPE_3__*,char*,char*) ;
 int stub1 (int ,int ) ;

void obs_source_save(obs_source_t *source)
{
 if (!data_valid(source, "obs_source_save"))
  return;

 obs_source_dosignal(source, "source_save", "save");

 if (source->info.save)
  source->info.save(source->context.data,
      source->context.settings);
}
