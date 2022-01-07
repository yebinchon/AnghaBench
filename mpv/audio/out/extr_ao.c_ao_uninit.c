
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao {TYPE_1__* api; } ;
struct TYPE_2__ {int (* uninit ) (struct ao*) ;} ;


 int stub1 (struct ao*) ;
 int talloc_free (struct ao*) ;

void ao_uninit(struct ao *ao)
{
    if (ao)
        ao->api->uninit(ao);
    talloc_free(ao);
}
