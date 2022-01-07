
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_7__ {int name; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_8__ {void* delay_flags; void* delay_sec; TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_output_t ;


 int LOG_WARNING ;
 int OBS_OUTPUT_ENCODED ;
 int blog (int ,char*,int ) ;
 int obs_output_valid (TYPE_3__*,char*) ;

void obs_output_set_delay(obs_output_t *output, uint32_t delay_sec,
     uint32_t flags)
{
 if (!obs_output_valid(output, "obs_output_set_delay"))
  return;

 if ((output->info.flags & OBS_OUTPUT_ENCODED) == 0) {
  blog(LOG_WARNING,
       "Output '%s': Tried to set a delay "
       "value on a non-encoded output",
       output->context.name);
  return;
 }

 output->delay_sec = delay_sec;
 output->delay_flags = flags;
}
