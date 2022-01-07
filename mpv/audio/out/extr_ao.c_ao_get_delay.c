
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao {TYPE_1__* api; } ;
struct TYPE_2__ {double (* get_delay ) (struct ao*) ;} ;


 double stub1 (struct ao*) ;

double ao_get_delay(struct ao *ao)
{
    return ao->api->get_delay(ao);
}
