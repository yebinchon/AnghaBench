
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_19__ {int guid; } ;
struct TYPE_18__ {int guid; } ;
struct TYPE_17__ {char* machine_name; int flags; int usages; int last_t; int first_t; int machine; } ;
struct TYPE_16__ {int url; } ;
typedef TYPE_1__ REGISTRY_URL ;
typedef TYPE_2__ REGISTRY_PERSON_URL ;
typedef TYPE_3__ REGISTRY_PERSON ;
typedef TYPE_4__ REGISTRY_MACHINE ;


 int D_REGISTRY ;
 int debug (int ,char*,int ,int ,int ,int) ;
 TYPE_2__* registry_person_url_allocate (TYPE_3__*,TYPE_4__*,TYPE_1__*,char*,size_t,int ) ;
 int registry_person_url_free (TYPE_3__*,TYPE_2__*) ;

REGISTRY_PERSON_URL *registry_person_url_reallocate(REGISTRY_PERSON *p, REGISTRY_MACHINE *m, REGISTRY_URL *u, char *name, size_t namelen, time_t when, REGISTRY_PERSON_URL *pu) {
    debug(D_REGISTRY, "registry_person_url_reallocate('%s', '%s', '%s'): allocating %zu bytes", p->guid, m->guid, u->url, sizeof(REGISTRY_PERSON_URL) + namelen);


    REGISTRY_PERSON_URL pu2 = {
            .first_t = pu->first_t,
            .last_t = pu->last_t,
            .usages = pu->usages,
            .flags = pu->flags,
            .machine = pu->machine,
            .machine_name = ""
    };


    registry_person_url_free(p, pu);
    pu = &pu2;


    REGISTRY_PERSON_URL *tpu = registry_person_url_allocate(p, m, u, name, namelen, when);
    tpu->first_t = pu->first_t;
    tpu->last_t = pu->last_t;
    tpu->usages = pu->usages;
    tpu->flags = pu->flags;

    return tpu;
}
