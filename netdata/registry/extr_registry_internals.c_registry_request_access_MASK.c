#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_2__ {int /*<<< orphan*/  usages_count; } ;
typedef  int /*<<< orphan*/  REGISTRY_URL ;
typedef  int /*<<< orphan*/  REGISTRY_PERSON ;
typedef  int /*<<< orphan*/  REGISTRY_MACHINE ;

/* Variables and functions */
 int /*<<< orphan*/  D_REGISTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 TYPE_1__ registry ; 
 char* FUNC1 (char*,size_t*) ; 
 char* FUNC2 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,size_t) ; 

REGISTRY_PERSON *FUNC9(char *person_guid, char *machine_guid, char *url, char *name, time_t when) {
    FUNC0(D_REGISTRY, "registry_request_access('%s', '%s', '%s'): NEW REQUEST", (person_guid)?person_guid:"", machine_guid, url);

    REGISTRY_MACHINE *m = FUNC4(machine_guid, when);
    if(!m) return NULL;

    // make sure the name is valid
    size_t namelen;
    name = FUNC1(name, &namelen);

    size_t urllen;
    url = FUNC2(url, &urllen);

    REGISTRY_PERSON *p = FUNC6(person_guid, when);

    REGISTRY_URL *u = FUNC8(url, urllen);
    FUNC7(p, m, u, name, namelen, when);
    FUNC5(m, u, when);

    FUNC3('A', p, m, u, name);

    registry.usages_count++;

    return p;
}