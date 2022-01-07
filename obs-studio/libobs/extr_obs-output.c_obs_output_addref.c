
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* control; } ;
typedef TYPE_2__ obs_output_t ;
struct TYPE_4__ {int ref; } ;


 int obs_ref_addref (int *) ;

void obs_output_addref(obs_output_t *output)
{
 if (!output)
  return;

 obs_ref_addref(&output->control->ref);
}
