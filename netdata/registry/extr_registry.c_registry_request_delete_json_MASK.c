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
struct web_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  RRDHOST ;
typedef  int /*<<< orphan*/  REGISTRY_PERSON ;

/* Variables and functions */
 int /*<<< orphan*/  REGISTRY_STATUS_FAILED ; 
 int /*<<< orphan*/  REGISTRY_STATUS_OK ; 
 TYPE_1__ registry ; 
 int FUNC0 (int /*<<< orphan*/ *,struct web_client*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct web_client*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(RRDHOST *host, struct web_client *w, char *person_guid, char *machine_guid, char *url, char *delete_url, time_t when) {
    if(!registry.enabled)
        return FUNC0(host, w, "delete");

    FUNC3();

    REGISTRY_PERSON *p = FUNC4(person_guid, machine_guid, url, delete_url, when);
    if(!p) {
        FUNC2(host, w, "delete", REGISTRY_STATUS_FAILED);
        FUNC1(w);
        FUNC5();
        return 412;
    }

    // generate the response
    FUNC2(host, w, "delete", REGISTRY_STATUS_OK);
    FUNC1(w);
    FUNC5();
    return 200;
}