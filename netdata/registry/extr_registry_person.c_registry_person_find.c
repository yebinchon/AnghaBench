
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int persons; } ;
typedef int REGISTRY_PERSON ;


 int D_REGISTRY ;
 int debug (int ,char*,char const*) ;
 int * dictionary_get (int ,char const*) ;
 TYPE_1__ registry ;

REGISTRY_PERSON *registry_person_find(const char *person_guid) {
    debug(D_REGISTRY, "Registry: registry_person_find('%s')", person_guid);
    return dictionary_get(registry.persons, person_guid);
}
