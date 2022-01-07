
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ time_t ;
struct TYPE_20__ {int guid; int links; } ;
struct TYPE_19__ {int guid; } ;
struct TYPE_18__ {int usages; int flags; TYPE_1__* url; scalar_t__ last_t; scalar_t__ first_t; TYPE_4__* machine; int machine_name; } ;
struct TYPE_17__ {int url; } ;
struct TYPE_16__ {size_t max_name_length; int persons_urls_memory; } ;
typedef TYPE_1__ REGISTRY_URL ;
typedef TYPE_2__ REGISTRY_PERSON_URL ;
typedef TYPE_3__ REGISTRY_PERSON ;
typedef TYPE_4__ REGISTRY_MACHINE ;


 int D_REGISTRY ;
 int REGISTRY_URL_FLAGS_DEFAULT ;
 int debug (int ,char*,int ,int ,int ,...) ;
 int error (char*,int ,char*,int ) ;
 int freez (TYPE_2__*) ;
 TYPE_2__* mallocz (int) ;
 TYPE_13__ registry ;
 TYPE_2__* registry_person_url_index_add (TYPE_3__*,TYPE_2__*) ;
 int registry_url_link (TYPE_1__*) ;
 int strncpyz (int ,char*,size_t) ;

REGISTRY_PERSON_URL *registry_person_url_allocate(REGISTRY_PERSON *p, REGISTRY_MACHINE *m, REGISTRY_URL *u, char *name, size_t namelen, time_t when) {
    debug(D_REGISTRY, "registry_person_url_allocate('%s', '%s', '%s'): allocating %zu bytes", p->guid, m->guid, u->url, sizeof(REGISTRY_PERSON_URL) + namelen);


    if(namelen > registry.max_name_length)
        namelen = registry.max_name_length;

    REGISTRY_PERSON_URL *pu = mallocz(sizeof(REGISTRY_PERSON_URL) + namelen);



    strncpyz(pu->machine_name, name, namelen);

    pu->machine = m;
    pu->first_t = pu->last_t = (uint32_t)when;
    pu->usages = 1;
    pu->url = u;
    pu->flags = REGISTRY_URL_FLAGS_DEFAULT;
    m->links++;

    registry.persons_urls_memory += sizeof(REGISTRY_PERSON_URL) + namelen;

    debug(D_REGISTRY, "registry_person_url_allocate('%s', '%s', '%s'): indexing URL in person", p->guid, m->guid, u->url);
    REGISTRY_PERSON_URL *tpu = registry_person_url_index_add(p, pu);
    if(tpu != pu) {
        error("Registry: Attempted to add duplicate person url '%s' with name '%s' to person '%s'", u->url, name, p->guid);
        freez(pu);
        pu = tpu;
    }
    else
        registry_url_link(u);

    return pu;
}
