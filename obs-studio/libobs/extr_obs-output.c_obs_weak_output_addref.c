
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ obs_weak_output_t ;


 int obs_weak_ref_addref (int *) ;

void obs_weak_output_addref(obs_weak_output_t *weak)
{
 if (!weak)
  return;

 obs_weak_ref_addref(&weak->ref);
}
