
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ time_t ;
struct TYPE_7__ {int machines_memory; int machines; int machines_count; } ;
struct TYPE_6__ {int guid; scalar_t__ usages; scalar_t__ last_t; scalar_t__ first_t; int machine_urls; } ;
typedef TYPE_1__ REGISTRY_MACHINE ;


 int DICTIONARY_FLAGS ;
 int D_REGISTRY ;
 int GUID_LEN ;
 int debug (int ,char*,char const*,...) ;
 int dictionary_create (int ) ;
 int dictionary_set (int ,int ,TYPE_1__*,int) ;
 TYPE_1__* mallocz (int) ;
 TYPE_3__ registry ;
 int strncpyz (int ,char const*,int ) ;

REGISTRY_MACHINE *registry_machine_allocate(const char *machine_guid, time_t when) {
    debug(D_REGISTRY, "Registry: registry_machine_allocate('%s'): creating new machine, sizeof(MACHINE)=%zu", machine_guid, sizeof(REGISTRY_MACHINE));

    REGISTRY_MACHINE *m = mallocz(sizeof(REGISTRY_MACHINE));

    strncpyz(m->guid, machine_guid, GUID_LEN);

    debug(D_REGISTRY, "Registry: registry_machine_allocate('%s'): creating dictionary of urls", machine_guid);
    m->machine_urls = dictionary_create(DICTIONARY_FLAGS);

    m->first_t = m->last_t = (uint32_t)when;
    m->usages = 0;

    registry.machines_memory += sizeof(REGISTRY_MACHINE);

    registry.machines_count++;
    dictionary_set(registry.machines, m->guid, m, sizeof(REGISTRY_MACHINE));

    return m;
}
