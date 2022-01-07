
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uuid_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ time_t ;
struct TYPE_7__ {int persons_memory; int persons; int persons_count; } ;
struct TYPE_6__ {int guid; scalar_t__ usages; scalar_t__ last_t; scalar_t__ first_t; int person_urls; } ;
typedef TYPE_1__ REGISTRY_PERSON ;


 int D_REGISTRY ;
 int GUID_LEN ;
 int avl_init (int *,int ) ;
 int debug (int ,char*,char const*,...) ;
 int dictionary_get (int ,int ) ;
 int dictionary_set (int ,int ,TYPE_1__*,int) ;
 int info (char*,int ) ;
 TYPE_1__* mallocz (int) ;
 int person_url_compare ;
 TYPE_3__ registry ;
 int strncpyz (int ,char const*,int ) ;
 int uuid_generate (int ) ;
 int uuid_unparse_lower (int ,int ) ;

REGISTRY_PERSON *registry_person_allocate(const char *person_guid, time_t when) {
    debug(D_REGISTRY, "Registry: registry_person_allocate('%s'): allocating new person, sizeof(PERSON)=%zu", (person_guid)?person_guid:"", sizeof(REGISTRY_PERSON));

    REGISTRY_PERSON *p = mallocz(sizeof(REGISTRY_PERSON));
    if(!person_guid) {
        for(;;) {
            uuid_t uuid;
            uuid_generate(uuid);
            uuid_unparse_lower(uuid, p->guid);

            debug(D_REGISTRY, "Registry: Checking if the generated person guid '%s' is unique", p->guid);
            if (!dictionary_get(registry.persons, p->guid)) {
                debug(D_REGISTRY, "Registry: generated person guid '%s' is unique", p->guid);
                break;
            }
            else
                info("Registry: generated person guid '%s' found in the registry. Retrying...", p->guid);
        }
    }
    else
        strncpyz(p->guid, person_guid, GUID_LEN);

    debug(D_REGISTRY, "Registry: registry_person_allocate('%s'): creating dictionary of urls", p->guid);
    avl_init(&p->person_urls, person_url_compare);

    p->first_t = p->last_t = (uint32_t)when;
    p->usages = 0;

    registry.persons_memory += sizeof(REGISTRY_PERSON);

    registry.persons_count++;
    dictionary_set(registry.persons, p->guid, p, sizeof(REGISTRY_PERSON));

    return p;
}
