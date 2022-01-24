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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
struct TYPE_7__ {int persons_memory; int /*<<< orphan*/  persons; int /*<<< orphan*/  persons_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  guid; scalar_t__ usages; scalar_t__ last_t; scalar_t__ first_t; int /*<<< orphan*/  person_urls; } ;
typedef  TYPE_1__ REGISTRY_PERSON ;

/* Variables and functions */
 int /*<<< orphan*/  D_REGISTRY ; 
 int /*<<< orphan*/  GUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  person_url_compare ; 
 TYPE_3__ registry ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

REGISTRY_PERSON *FUNC9(const char *person_guid, time_t when) {
    FUNC1(D_REGISTRY, "Registry: registry_person_allocate('%s'): allocating new person, sizeof(PERSON)=%zu", (person_guid)?person_guid:"", sizeof(REGISTRY_PERSON));

    REGISTRY_PERSON *p = FUNC5(sizeof(REGISTRY_PERSON));
    if(!person_guid) {
        for(;;) {
            uuid_t uuid;
            FUNC7(uuid);
            FUNC8(uuid, p->guid);

            FUNC1(D_REGISTRY, "Registry: Checking if the generated person guid '%s' is unique", p->guid);
            if (!FUNC2(registry.persons, p->guid)) {
                FUNC1(D_REGISTRY, "Registry: generated person guid '%s' is unique", p->guid);
                break;
            }
            else
                FUNC4("Registry: generated person guid '%s' found in the registry. Retrying...", p->guid);
        }
    }
    else
        FUNC6(p->guid, person_guid, GUID_LEN);

    FUNC1(D_REGISTRY, "Registry: registry_person_allocate('%s'): creating dictionary of urls", p->guid);
    FUNC0(&p->person_urls, person_url_compare);

    p->first_t = p->last_t = (uint32_t)when;
    p->usages = 0;

    registry.persons_memory += sizeof(REGISTRY_PERSON);

    registry.persons_count++;
    FUNC3(registry.persons, p->guid, p, sizeof(REGISTRY_PERSON));

    return p;
}