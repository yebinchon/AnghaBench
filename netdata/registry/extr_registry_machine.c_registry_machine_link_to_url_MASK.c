#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
struct TYPE_15__ {scalar_t__ last_t; int /*<<< orphan*/  guid; int /*<<< orphan*/  usages; int /*<<< orphan*/  machine_urls; } ;
struct TYPE_14__ {scalar_t__ last_t; int flags; int /*<<< orphan*/  usages; } ;
struct TYPE_13__ {int /*<<< orphan*/  url; } ;
struct TYPE_12__ {int /*<<< orphan*/  machines_urls_count; } ;
typedef  TYPE_1__ REGISTRY_URL ;
typedef  TYPE_2__ REGISTRY_MACHINE_URL ;
typedef  TYPE_3__ REGISTRY_MACHINE ;

/* Variables and functions */
 int /*<<< orphan*/  D_REGISTRY ; 
 int REGISTRY_URL_FLAGS_EXPIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_10__ registry ; 
 TYPE_2__* FUNC3 (TYPE_3__*,TYPE_1__*,scalar_t__) ; 

REGISTRY_MACHINE_URL *FUNC4(REGISTRY_MACHINE *m, REGISTRY_URL *u, time_t when) {
    FUNC0(D_REGISTRY, "registry_machine_link_to_url('%s', '%s'): searching for URL in machine", m->guid, u->url);

    REGISTRY_MACHINE_URL *mu = FUNC1(m->machine_urls, u->url);
    if(!mu) {
        FUNC0(D_REGISTRY, "registry_machine_link_to_url('%s', '%s'): not found", m->guid, u->url);
        mu = FUNC3(m, u, when);
        registry.machines_urls_count++;
    }
    else {
        FUNC0(D_REGISTRY, "registry_machine_link_to_url('%s', '%s'): found", m->guid, u->url);
        mu->usages++;
        if(FUNC2(mu->last_t < (uint32_t)when)) mu->last_t = (uint32_t)when;
    }

    m->usages++;
    if(FUNC2(m->last_t < (uint32_t)when)) m->last_t = (uint32_t)when;

    if(mu->flags & REGISTRY_URL_FLAGS_EXPIRED) {
        FUNC0(D_REGISTRY, "registry_machine_link_to_url('%s', '%s'): accessing an expired URL.", m->guid, u->url);
        mu->flags &= ~REGISTRY_URL_FLAGS_EXPIRED;
    }

    return mu;
}