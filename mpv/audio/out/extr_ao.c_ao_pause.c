
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao {TYPE_1__* api; } ;
struct TYPE_2__ {int (* pause ) (struct ao*) ;} ;


 int stub1 (struct ao*) ;

void ao_pause(struct ao *ao)
{
    if (ao->api->pause)
        ao->api->pause(ao);
}
