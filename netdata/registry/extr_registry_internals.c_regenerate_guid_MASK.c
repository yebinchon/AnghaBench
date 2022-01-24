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
typedef  int /*<<< orphan*/  uuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(const char *guid, char *result) {
    uuid_t uuid;
    if(FUNC2(FUNC3(guid, uuid) == -1)) {
        FUNC0("Registry: GUID '%s' is not a valid GUID.", guid);
        return -1;
    }
    else {
        FUNC4(uuid, result);

#ifdef NETDATA_INTERNAL_CHECKS
        if(strcmp(guid, result) != 0)
            info("GUID '%s' and re-generated GUID '%s' differ!", guid, result);
#endif /* NETDATA_INTERNAL_CHECKS */
    }

    return 0;
}