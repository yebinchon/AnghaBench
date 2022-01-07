
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int persons; } ;
struct TYPE_7__ {scalar_t__ root; } ;
struct TYPE_8__ {int guid; TYPE_1__ person_urls; } ;
typedef int REGISTRY_PERSON_URL ;
typedef TYPE_2__ REGISTRY_PERSON ;


 int D_REGISTRY ;
 int debug (int ,char*,int ) ;
 int dictionary_del (int ,int ) ;
 int freez (TYPE_2__*) ;
 TYPE_5__ registry ;
 int registry_person_unlink_from_url (TYPE_2__*,int *) ;

void registry_person_del(REGISTRY_PERSON *p) {
    debug(D_REGISTRY, "Registry: registry_person_del('%s'): creating dictionary of urls", p->guid);

    while(p->person_urls.root)
        registry_person_unlink_from_url(p, (REGISTRY_PERSON_URL *)p->person_urls.root);

    debug(D_REGISTRY, "Registry: deleting person '%s' from persons registry", p->guid);
    dictionary_del(registry.persons, p->guid);

    debug(D_REGISTRY, "Registry: freeing person '%s'", p->guid);
    freez(p);
}
