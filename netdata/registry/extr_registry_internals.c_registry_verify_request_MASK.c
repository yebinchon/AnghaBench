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
typedef  int /*<<< orphan*/  REGISTRY_PERSON_URL ;
typedef  int /*<<< orphan*/  REGISTRY_PERSON ;
typedef  int /*<<< orphan*/  REGISTRY_MACHINE ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 

REGISTRY_PERSON_URL *FUNC6(char *person_guid, char *machine_guid, char *url, REGISTRY_PERSON **pp, REGISTRY_MACHINE **mm) {
    char pbuf[GUID_LEN + 1], mbuf[GUID_LEN + 1];

    if(!person_guid || !*person_guid || !machine_guid || !*machine_guid || !url || !*url) {
        FUNC0("Registry Request Verification: invalid request! person: '%s', machine '%s', url '%s'", person_guid?person_guid:"UNSET", machine_guid?machine_guid:"UNSET", url?url:"UNSET");
        return NULL;
    }

    // normalize the url
    url = FUNC2(url, NULL);

    // make sure the person GUID is valid
    if(FUNC1(person_guid, pbuf) == -1) {
        FUNC0("Registry Request Verification: invalid person GUID, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return NULL;
    }
    person_guid = pbuf;

    // make sure the machine GUID is valid
    if(FUNC1(machine_guid, mbuf) == -1) {
        FUNC0("Registry Request Verification: invalid machine GUID, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return NULL;
    }
    machine_guid = mbuf;

    // make sure the machine exists
    REGISTRY_MACHINE *m = FUNC3(machine_guid);
    if(!m) {
        FUNC0("Registry Request Verification: machine not found, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return NULL;
    }
    if(mm) *mm = m;

    // make sure the person exist
    REGISTRY_PERSON *p = FUNC4(person_guid);
    if(!p) {
        FUNC0("Registry Request Verification: person not found, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return NULL;
    }
    if(pp) *pp = p;

    REGISTRY_PERSON_URL *pu = FUNC5(p, url);
    if(!pu) {
        FUNC0("Registry Request Verification: URL not found for person, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return NULL;
    }
    //else if (pu->machine != m) {
    //    info("Registry Request Verification: Machine mismatch: person: '%s', machine requested='%s' <> loaded='%s', url '%s'", person_guid, machine_guid, pu->machine->guid, url);
    //    return NULL;
    //}

    return pu;
}