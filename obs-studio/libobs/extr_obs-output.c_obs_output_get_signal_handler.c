
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int signal_handler_t ;
struct TYPE_5__ {int * signals; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ obs_output_t ;


 scalar_t__ obs_output_valid (TYPE_2__ const*,char*) ;

signal_handler_t *obs_output_get_signal_handler(const obs_output_t *output)
{
 return obs_output_valid(output, "obs_output_get_signal_handler")
         ? output->context.signals
         : ((void*)0);
}
