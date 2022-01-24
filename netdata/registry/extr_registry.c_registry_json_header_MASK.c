#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_4__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_8__ {int /*<<< orphan*/  contenttype; } ;
struct TYPE_7__ {int /*<<< orphan*/  machine_guid; int /*<<< orphan*/  registry_hostname; } ;
typedef  TYPE_2__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  CT_APPLICATION_JSON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(RRDHOST *host, struct web_client *w, const char *action, const char *status) {
    FUNC0(w->response.data);
    w->response.data->contenttype = CT_APPLICATION_JSON;
    FUNC1(w->response.data, "{\n\t\"action\": \"%s\",\n\t\"status\": \"%s\",\n\t\"hostname\": \"%s\",\n\t\"machine_guid\": \"%s\"",
            action, status, host->registry_hostname, host->machine_guid);
}