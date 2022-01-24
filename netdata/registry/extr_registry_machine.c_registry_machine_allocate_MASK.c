#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
struct TYPE_7__ {int machines_memory; int /*<<< orphan*/  machines; int /*<<< orphan*/  machines_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  guid; scalar_t__ usages; scalar_t__ last_t; scalar_t__ first_t; int /*<<< orphan*/  machine_urls; } ;
typedef  TYPE_1__ REGISTRY_MACHINE ;

/* Variables and functions */
 int /*<<< orphan*/  DICTIONARY_FLAGS ; 
 int /*<<< orphan*/  D_REGISTRY ; 
 int /*<<< orphan*/  GUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 TYPE_3__ registry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

REGISTRY_MACHINE *FUNC5(const char *machine_guid, time_t when) {
    FUNC0(D_REGISTRY, "Registry: registry_machine_allocate('%s'): creating new machine, sizeof(MACHINE)=%zu", machine_guid, sizeof(REGISTRY_MACHINE));

    REGISTRY_MACHINE *m = FUNC3(sizeof(REGISTRY_MACHINE));

    FUNC4(m->guid, machine_guid, GUID_LEN);

    FUNC0(D_REGISTRY, "Registry: registry_machine_allocate('%s'): creating dictionary of urls", machine_guid);
    m->machine_urls = FUNC1(DICTIONARY_FLAGS);

    m->first_t = m->last_t = (uint32_t)when;
    m->usages = 0;

    registry.machines_memory += sizeof(REGISTRY_MACHINE);

    registry.machines_count++;
    FUNC2(registry.machines, m->guid, m, sizeof(REGISTRY_MACHINE));

    return m;
}