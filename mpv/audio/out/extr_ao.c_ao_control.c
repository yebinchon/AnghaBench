
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao {TYPE_1__* api; } ;
typedef enum aocontrol { ____Placeholder_aocontrol } aocontrol ;
struct TYPE_2__ {int (* control ) (struct ao*,int,void*) ;} ;


 int CONTROL_UNKNOWN ;
 int stub1 (struct ao*,int,void*) ;

int ao_control(struct ao *ao, enum aocontrol cmd, void *arg)
{
    return ao->api->control ? ao->api->control(ao, cmd, arg) : CONTROL_UNKNOWN;
}
