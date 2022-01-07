
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_hotplug {struct ao_hotplug* ao; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* hotplug_uninit ) (struct ao_hotplug*) ;} ;


 int stub1 (struct ao_hotplug*) ;
 int talloc_free (struct ao_hotplug*) ;

void ao_hotplug_destroy(struct ao_hotplug *hp)
{
    if (!hp)
        return;
    if (hp->ao && hp->ao->driver->hotplug_uninit)
        hp->ao->driver->hotplug_uninit(hp->ao);
    talloc_free(hp->ao);
    talloc_free(hp);
}
