
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_16__ {int url; } ;
struct TYPE_15__ {int guid; } ;
struct TYPE_14__ {int machine_name; TYPE_1__* machine; TYPE_4__* url; } ;
struct TYPE_13__ {int links; } ;
struct TYPE_12__ {int persons_urls_memory; } ;
typedef TYPE_2__ REGISTRY_PERSON_URL ;
typedef TYPE_3__ REGISTRY_PERSON ;


 int D_REGISTRY ;
 int debug (int ,char*,int ,int ) ;
 int freez (TYPE_2__*) ;
 TYPE_10__ registry ;
 TYPE_2__* registry_person_url_index_del (TYPE_3__*,TYPE_2__*) ;
 int registry_url_unlink (TYPE_4__*) ;
 scalar_t__ strlen (int ) ;

void registry_person_url_free(REGISTRY_PERSON *p, REGISTRY_PERSON_URL *pu) {
    debug(D_REGISTRY, "registry_person_url_free('%s', '%s')", p->guid, pu->url->url);

    REGISTRY_PERSON_URL *tpu = registry_person_url_index_del(p, pu);
    if(tpu) {
        registry_url_unlink(tpu->url);
        tpu->machine->links--;
        registry.persons_urls_memory -= sizeof(REGISTRY_PERSON_URL) + strlen(tpu->machine_name);
        freez(tpu);
    }
}
