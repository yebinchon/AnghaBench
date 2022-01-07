
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int data; } ;
struct TYPE_8__ {int (* get_total_bytes ) (int ) ;} ;
struct TYPE_10__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_output_t ;


 scalar_t__ delay_active (TYPE_3__ const*) ;
 int delay_capturing (TYPE_3__ const*) ;
 int obs_output_valid (TYPE_3__ const*,char*) ;
 int stub1 (int ) ;

uint64_t obs_output_get_total_bytes(const obs_output_t *output)
{
 if (!obs_output_valid(output, "obs_output_get_total_bytes"))
  return 0;
 if (!output->info.get_total_bytes)
  return 0;

 if (delay_active(output) && !delay_capturing(output))
  return 0;

 return output->info.get_total_bytes(output->context.data);
}
