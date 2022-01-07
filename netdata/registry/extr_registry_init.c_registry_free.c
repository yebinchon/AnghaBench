
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {TYPE_10__* machines; TYPE_10__* persons; int enabled; } ;
struct TYPE_16__ {int url; } ;
struct TYPE_15__ {TYPE_2__* value; } ;
struct TYPE_14__ {int guid; TYPE_10__* machine_urls; TYPE_6__* url; } ;
struct TYPE_13__ {scalar_t__ root; } ;
struct TYPE_12__ {TYPE_1__ values_index; } ;
typedef TYPE_2__ REGISTRY_PERSON ;
typedef TYPE_2__ REGISTRY_MACHINE_URL ;
typedef TYPE_2__ REGISTRY_MACHINE ;
typedef TYPE_5__ NAME_VALUE ;


 int D_REGISTRY ;
 int debug (int ,char*,...) ;
 int dictionary_del (TYPE_10__*,int ) ;
 int dictionary_destroy (TYPE_10__*) ;
 int freez (TYPE_2__*) ;
 TYPE_8__ registry ;
 int registry_person_del (TYPE_2__*) ;
 int registry_url_unlink (TYPE_6__*) ;

void registry_free(void) {
    if(!registry.enabled) return;




    while(registry.persons->values_index.root) {
        REGISTRY_PERSON *p = ((NAME_VALUE *)registry.persons->values_index.root)->value;
        registry_person_del(p);
    }

    while(registry.machines->values_index.root) {
        REGISTRY_MACHINE *m = ((NAME_VALUE *)registry.machines->values_index.root)->value;



        while(m->machine_urls->values_index.root) {
            REGISTRY_MACHINE_URL *mu = ((NAME_VALUE *)m->machine_urls->values_index.root)->value;






            debug(D_REGISTRY, "Registry: deleting url '%s' from person '%s'", mu->url->url, m->guid);
            dictionary_del(m->machine_urls, mu->url->url);

            debug(D_REGISTRY, "Registry: unlinking url '%s' from machine", mu->url->url);
            registry_url_unlink(mu->url);

            debug(D_REGISTRY, "Registry: freeing machine url");
            freez(mu);
        }

        debug(D_REGISTRY, "Registry: deleting machine '%s' from machines registry", m->guid);
        dictionary_del(registry.machines, m->guid);

        debug(D_REGISTRY, "Registry: destroying URL dictionary of machine '%s'", m->guid);
        dictionary_destroy(m->machine_urls);

        debug(D_REGISTRY, "Registry: freeing machine '%s'", m->guid);
        freez(m);
    }



    debug(D_REGISTRY, "Registry: destroying persons dictionary");
    dictionary_destroy(registry.persons);

    debug(D_REGISTRY, "Registry: destroying machines dictionary");
    dictionary_destroy(registry.machines);
}
