
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int support_edge_trigger; } ;


 TYPE_1__* module ;

int fpm_event_support_edge_trigger()
{
 return module ? module->support_edge_trigger : 0;
}
