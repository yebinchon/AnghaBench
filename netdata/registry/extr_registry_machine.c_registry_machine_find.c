
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int machines; } ;
typedef int REGISTRY_MACHINE ;


 int D_REGISTRY ;
 int debug (int ,char*,char const*) ;
 int * dictionary_get (int ,char const*) ;
 TYPE_1__ registry ;

REGISTRY_MACHINE *registry_machine_find(const char *machine_guid) {
    debug(D_REGISTRY, "Registry: registry_machine_find('%s')", machine_guid);
    return dictionary_get(registry.machines, machine_guid);
}
