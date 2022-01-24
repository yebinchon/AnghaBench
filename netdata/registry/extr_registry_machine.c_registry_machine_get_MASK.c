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
typedef  int /*<<< orphan*/  REGISTRY_MACHINE ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int) ; 

REGISTRY_MACHINE *FUNC6(const char *machine_guid, time_t when) {
    REGISTRY_MACHINE *m = NULL;

    if(FUNC1(machine_guid && *machine_guid)) {
        // validate it is a GUID
        char buf[GUID_LEN + 1];
        if(FUNC5(FUNC2(machine_guid, buf) == -1))
            FUNC0("Registry: machine guid '%s' is not a valid guid. Ignoring it.", machine_guid);
        else {
            machine_guid = buf;
            m = FUNC4(machine_guid);
            if(!m) m = FUNC3(machine_guid, when);
        }
    }

    return m;
}