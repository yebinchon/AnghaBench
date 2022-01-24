#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_10__* machines; TYPE_10__* persons; int /*<<< orphan*/  enabled; } ;
struct TYPE_16__ {int /*<<< orphan*/  url; } ;
struct TYPE_15__ {TYPE_2__* value; } ;
struct TYPE_14__ {int /*<<< orphan*/  guid; TYPE_10__* machine_urls; TYPE_6__* url; } ;
struct TYPE_13__ {scalar_t__ root; } ;
struct TYPE_12__ {TYPE_1__ values_index; } ;
typedef  TYPE_2__ REGISTRY_PERSON ;
typedef  TYPE_2__ REGISTRY_MACHINE_URL ;
typedef  TYPE_2__ REGISTRY_MACHINE ;
typedef  TYPE_5__ NAME_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  D_REGISTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_8__ registry ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 

void FUNC6(void) {
    if(!registry.enabled) return;

    // we need to destroy the dictionaries ourselves
    // since the dictionaries use memory we allocated

    while(registry.persons->values_index.root) {
        REGISTRY_PERSON *p = ((NAME_VALUE *)registry.persons->values_index.root)->value;
        FUNC4(p);
    }

    while(registry.machines->values_index.root) {
        REGISTRY_MACHINE *m = ((NAME_VALUE *)registry.machines->values_index.root)->value;

        // fprintf(stderr, "\nMACHINE: '%s', first: %u, last: %u, usages: %u\n", m->guid, m->first_t, m->last_t, m->usages);

        while(m->machine_urls->values_index.root) {
            REGISTRY_MACHINE_URL *mu = ((NAME_VALUE *)m->machine_urls->values_index.root)->value;

            // fprintf(stderr, "\tURL: '%s', first: %u, last: %u, usages: %u, flags: 0x%02x\n", mu->url->url, mu->first_t, mu->last_t, mu->usages, mu->flags);

            //debug(D_REGISTRY, "Registry: destroying persons dictionary from url '%s'", mu->url->url);
            //dictionary_destroy(mu->persons);

            FUNC0(D_REGISTRY, "Registry: deleting url '%s' from person '%s'", mu->url->url, m->guid);
            FUNC1(m->machine_urls, mu->url->url);

            FUNC0(D_REGISTRY, "Registry: unlinking url '%s' from machine", mu->url->url);
            FUNC5(mu->url);

            FUNC0(D_REGISTRY, "Registry: freeing machine url");
            FUNC3(mu);
        }

        FUNC0(D_REGISTRY, "Registry: deleting machine '%s' from machines registry", m->guid);
        FUNC1(registry.machines, m->guid);

        FUNC0(D_REGISTRY, "Registry: destroying URL dictionary of machine '%s'", m->guid);
        FUNC2(m->machine_urls);

        FUNC0(D_REGISTRY, "Registry: freeing machine '%s'", m->guid);
        FUNC3(m);
    }

    // and free the memory of remaining dictionary structures

    FUNC0(D_REGISTRY, "Registry: destroying persons dictionary");
    FUNC2(registry.persons);

    FUNC0(D_REGISTRY, "Registry: destroying machines dictionary");
    FUNC2(registry.machines);
}