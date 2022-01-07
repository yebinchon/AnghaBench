
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float balance; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_valid (TYPE_1__*,char*) ;

void obs_source_set_balance_value(obs_source_t *source, float balance)
{
 if (!obs_source_valid(source, "obs_source_set_balance_value"))
  return;

 source->balance = balance;
}
