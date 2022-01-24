#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct web_client {TYPE_1__ response; } ;
struct registry_person_url_callback_verify_machine_exists_data {scalar_t__ count; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_7__ {int /*<<< orphan*/  guid; int /*<<< orphan*/  person_urls; } ;
typedef  int /*<<< orphan*/  RRDHOST ;
typedef  TYPE_2__ REGISTRY_PERSON ;
typedef  int /*<<< orphan*/  REGISTRY_MACHINE ;

/* Variables and functions */
 int /*<<< orphan*/  REGISTRY_STATUS_FAILED ; 
 int /*<<< orphan*/  REGISTRY_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct registry_person_url_callback_verify_machine_exists_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_5__ registry ; 
 int FUNC2 (int /*<<< orphan*/ *,struct web_client*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct web_client*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 TYPE_2__* FUNC7 (char*) ; 
 int /*<<< orphan*/  registry_person_url_callback_verify_machine_exists ; 
 int /*<<< orphan*/  FUNC8 (struct web_client*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(RRDHOST *host, struct web_client *w, char *person_guid, char *machine_guid, char *url, char *new_person_guid, time_t when) {
    if(!registry.enabled)
        return FUNC2(host, w, "switch");

    (void)url;
    (void)when;

    FUNC5();

    REGISTRY_PERSON *op = FUNC7(person_guid);
    if(!op) {
        FUNC4(host, w, "switch", REGISTRY_STATUS_FAILED);
        FUNC3(w);
        FUNC9();
        return 430;
    }

    REGISTRY_PERSON *np = FUNC7(new_person_guid);
    if(!np) {
        FUNC4(host, w, "switch", REGISTRY_STATUS_FAILED);
        FUNC3(w);
        FUNC9();
        return 431;
    }

    REGISTRY_MACHINE *m = FUNC6(machine_guid);
    if(!m) {
        FUNC4(host, w, "switch", REGISTRY_STATUS_FAILED);
        FUNC3(w);
        FUNC9();
        return 432;
    }

    struct registry_person_url_callback_verify_machine_exists_data data = { m, 0 };

    // verify the old person has access to this machine
    FUNC0(&op->person_urls, registry_person_url_callback_verify_machine_exists, &data);
    if(!data.count) {
        FUNC4(host, w, "switch", REGISTRY_STATUS_FAILED);
        FUNC3(w);
        FUNC9();
        return 433;
    }

    // verify the new person has access to this machine
    data.count = 0;
    FUNC0(&np->person_urls, registry_person_url_callback_verify_machine_exists, &data);
    if(!data.count) {
        FUNC4(host, w, "switch", REGISTRY_STATUS_FAILED);
        FUNC3(w);
        FUNC9();
        return 434;
    }

    // set the cookie of the new person
    // the user just switched identity
    FUNC8(w, np);

    // generate the response
    FUNC4(host, w, "switch", REGISTRY_STATUS_OK);
    FUNC1(w->response.data, ",\n\t\"person_guid\": \"%s\"", np->guid);
    FUNC3(w);

    FUNC9();
    return 200;
}