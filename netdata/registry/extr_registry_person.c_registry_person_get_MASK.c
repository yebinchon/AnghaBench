#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  REGISTRY_PERSON ;

/* Variables and functions */
 int /*<<< orphan*/  D_REGISTRY ; 
 int /*<<< orphan*/  GUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int) ; 

REGISTRY_PERSON *FUNC6(const char *person_guid, time_t when) {
    FUNC0(D_REGISTRY, "Registry: registry_person_get('%s'): creating dictionary of urls", person_guid);

    REGISTRY_PERSON *p = NULL;

    if(person_guid && *person_guid) {
        char buf[GUID_LEN + 1];
        // validate it is a GUID
        if(FUNC5(FUNC2(person_guid, buf) == -1))
            FUNC1("Registry: person guid '%s' is not a valid guid. Ignoring it.", person_guid);
        else {
            person_guid = buf;
            p = FUNC4(person_guid);
        }
    }

    if(!p) p = FUNC3(NULL, when);

    return p;
}