#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct web_client {TYPE_1__ response; } ;
struct registry_json_walk_person_urls_callback {int /*<<< orphan*/  member_3; struct web_client* member_2; TYPE_2__* member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  machine_urls; } ;
typedef  int /*<<< orphan*/  RRDHOST ;
typedef  TYPE_2__ REGISTRY_MACHINE ;

/* Variables and functions */
 int /*<<< orphan*/  REGISTRY_STATUS_FAILED ; 
 int /*<<< orphan*/  REGISTRY_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct registry_json_walk_person_urls_callback*) ; 
 TYPE_4__ registry ; 
 int FUNC2 (int /*<<< orphan*/ *,struct web_client*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct web_client*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  registry_json_machine_url_callback ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(RRDHOST *host, struct web_client *w, char *person_guid, char *machine_guid, char *url, char *request_machine, time_t when) {
    if(!registry.enabled)
        return FUNC2(host, w, "search");

    FUNC5();

    REGISTRY_MACHINE *m = FUNC6(person_guid, machine_guid, url, request_machine, when);
    if(!m) {
        FUNC4(host, w, "search", REGISTRY_STATUS_FAILED);
        FUNC3(w);
        FUNC7();
        return 404;
    }

    FUNC4(host, w, "search", REGISTRY_STATUS_OK);

    FUNC0(w->response.data, ",\n\t\"urls\": [");
    struct registry_json_walk_person_urls_callback c = { NULL, m, w, 0 };
    FUNC1(m->machine_urls, registry_json_machine_url_callback, &c);
    FUNC0(w->response.data, "\n\t]\n");

    FUNC3(w);
    FUNC7();
    return 200;
}