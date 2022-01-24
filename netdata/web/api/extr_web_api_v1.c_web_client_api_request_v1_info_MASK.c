#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_4__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_18__ {int /*<<< orphan*/  contenttype; } ;
struct TYPE_17__ {char* program_version; char* machine_guid; TYPE_2__* system_info; } ;
struct TYPE_16__ {char* os_name; char* os_id; char* os_id_like; char* os_version; char* os_version_id; char* os_detection; char* kernel_name; char* kernel_version; char* architecture; char* virtualization; char* virt_detection; char* container; char* container_detection; } ;
typedef  TYPE_3__ RRDHOST ;
typedef  TYPE_4__ BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  CT_APPLICATION_JSON ; 
 int HTTP_RESP_BACKEND_FETCH_FAILED ; 
 int HTTP_RESP_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  netdata_ready ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 

inline int FUNC7(RRDHOST *host, struct web_client *w, char *url) {
    (void)url;
    if (!netdata_ready) return HTTP_RESP_BACKEND_FETCH_FAILED;

    BUFFER *wb = w->response.data;
    FUNC0(wb);
    wb->contenttype = CT_APPLICATION_JSON;

    FUNC3(wb, "{\n");
    FUNC2(wb, "\t\"version\": \"%s\",\n", host->program_version);
    FUNC2(wb, "\t\"uid\": \"%s\",\n", host->machine_guid);

    FUNC3(wb, "\t\"mirrored_hosts\": [\n");
    FUNC5(wb);
    FUNC3(wb, "\t],\n");

    FUNC3(wb, "\t\"alarms\": {\n");
    FUNC6(host, wb);
    FUNC3(wb, "\t},\n");

    FUNC2(wb, "\t\"os_name\": %s,\n", (host->system_info->os_name) ? host->system_info->os_name : "\"\"");
    FUNC2(wb, "\t\"os_id\": \"%s\",\n", (host->system_info->os_id) ? host->system_info->os_id : "");
    FUNC2(wb, "\t\"os_id_like\": \"%s\",\n", (host->system_info->os_id_like) ? host->system_info->os_id_like : "");
    FUNC2(wb, "\t\"os_version\": \"%s\",\n", (host->system_info->os_version) ? host->system_info->os_version : "");
    FUNC2(wb, "\t\"os_version_id\": \"%s\",\n", (host->system_info->os_version_id) ? host->system_info->os_version_id : "");
    FUNC2(wb, "\t\"os_detection\": \"%s\",\n", (host->system_info->os_detection) ? host->system_info->os_detection : "");
    FUNC2(wb, "\t\"kernel_name\": \"%s\",\n", (host->system_info->kernel_name) ? host->system_info->kernel_name : "");
    FUNC2(wb, "\t\"kernel_version\": \"%s\",\n", (host->system_info->kernel_version) ? host->system_info->kernel_version : "");
    FUNC2(wb, "\t\"architecture\": \"%s\",\n", (host->system_info->architecture) ? host->system_info->architecture : "");
    FUNC2(wb, "\t\"virtualization\": \"%s\",\n", (host->system_info->virtualization) ? host->system_info->virtualization : "");
    FUNC2(wb, "\t\"virt_detection\": \"%s\",\n", (host->system_info->virt_detection) ? host->system_info->virt_detection : "");
    FUNC2(wb, "\t\"container\": \"%s\",\n", (host->system_info->container) ? host->system_info->container : "");
    FUNC2(wb, "\t\"container_detection\": \"%s\",\n", (host->system_info->container_detection) ? host->system_info->container_detection : "");

    FUNC3(wb, "\t\"collectors\": [");
    FUNC4(host, wb);
    FUNC3(wb, "\n\t]\n");

    FUNC3(wb, "}");
    FUNC1(wb);
    return HTTP_RESP_OK;
}