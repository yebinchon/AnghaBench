
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao {TYPE_1__* api; } ;
struct TYPE_2__ {int (* drain ) (struct ao*) ;} ;


 int stub1 (struct ao*) ;

void ao_drain(struct ao *ao)
{
    if (ao->api->drain)
        ao->api->drain(ao);
}
