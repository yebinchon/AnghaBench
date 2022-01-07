
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int settings; int data; } ;
struct TYPE_6__ {int (* update ) (int ,int ) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_output_t ;
typedef int obs_data_t ;


 int obs_data_apply (int ,int *) ;
 int obs_output_valid (TYPE_3__*,char*) ;
 int stub1 (int ,int ) ;

void obs_output_update(obs_output_t *output, obs_data_t *settings)
{
 if (!obs_output_valid(output, "obs_output_update"))
  return;

 obs_data_apply(output->context.settings, settings);

 if (output->info.update)
  output->info.update(output->context.data,
        output->context.settings);
}
