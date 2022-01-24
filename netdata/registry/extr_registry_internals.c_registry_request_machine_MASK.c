#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct machine_request_callback_data {scalar_t__ result; int /*<<< orphan*/ * member_1; TYPE_4__* member_0; } ;
struct TYPE_13__ {char* guid; } ;
struct TYPE_12__ {int /*<<< orphan*/  person_urls; int /*<<< orphan*/  guid; } ;
struct TYPE_11__ {TYPE_1__* url; } ;
struct TYPE_10__ {int /*<<< orphan*/  url; } ;
typedef  TYPE_2__ REGISTRY_PERSON_URL ;
typedef  TYPE_3__ REGISTRY_PERSON ;
typedef  TYPE_4__ REGISTRY_MACHINE ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct machine_request_callback_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  machine_request_callback ; 
 int FUNC2 (char*,char*) ; 
 TYPE_4__* FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (char*,char*,char*,TYPE_3__**,TYPE_4__**) ; 

REGISTRY_MACHINE *FUNC5(char *person_guid, char *machine_guid, char *url, char *request_machine, time_t when) {
    (void)when;

    char mbuf[GUID_LEN + 1];

    REGISTRY_PERSON *p = NULL;
    REGISTRY_MACHINE *m = NULL;
    REGISTRY_PERSON_URL *pu = FUNC4(person_guid, machine_guid, url, &p, &m);
    if(!pu || !p || !m) return NULL;

    // make sure the machine GUID is valid
    if(FUNC2(request_machine, mbuf) == -1) {
        FUNC1("Registry Machine URLs request: invalid machine GUID, person: '%s', machine '%s', url '%s', request machine '%s'", p->guid, m->guid, pu->url->url, request_machine);
        return NULL;
    }
    request_machine = mbuf;

    // make sure the machine exists
    m = FUNC3(request_machine);
    if(!m) {
        FUNC1("Registry Machine URLs request: machine not found, person: '%s', machine '%s', url '%s', request machine '%s'", p->guid, machine_guid, pu->url->url, request_machine);
        return NULL;
    }

    // Verify the user has in the past accessed this machine
    // We will walk through the PERSON_URLs to find the machine
    // linking to our machine

    // a structure to pass to the dictionary_get_all() callback handler
    struct machine_request_callback_data rdata = { m, NULL };

    // request a walk through on the dictionary
    FUNC0(&p->person_urls, machine_request_callback, &rdata);

    if(rdata.result)
        return m;

    return NULL;
}