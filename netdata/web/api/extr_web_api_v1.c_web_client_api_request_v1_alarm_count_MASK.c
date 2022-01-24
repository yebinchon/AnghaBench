#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int /*<<< orphan*/  contenttype; } ;
typedef  int /*<<< orphan*/  RRDHOST ;
typedef  int /*<<< orphan*/  RRDCALC_STATUS ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  CT_APPLICATION_JSON ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  RRDCALC_STATUS_CLEAR ; 
 int /*<<< orphan*/  RRDCALC_STATUS_CRITICAL ; 
 int /*<<< orphan*/  RRDCALC_STATUS_RAISED ; 
 int /*<<< orphan*/  RRDCALC_STATUS_REMOVED ; 
 int /*<<< orphan*/  RRDCALC_STATUS_UNDEFINED ; 
 int /*<<< orphan*/  RRDCALC_STATUS_UNINITIALIZED ; 
 int /*<<< orphan*/  RRDCALC_STATUS_WARNING ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char FUNC10 (char) ; 

inline int FUNC11(RRDHOST *host, struct web_client *w, char *url) {
    RRDCALC_STATUS status = RRDCALC_STATUS_RAISED;
    BUFFER *contexts = NULL;

    FUNC1(w->response.data);
    FUNC4(w->response.data, "[");

    while(url) {
        char *value = FUNC8(&url, "&");
        if(!value || !*value) continue;

        char *name = FUNC8(&value, "=");
        if(!name || !*name) continue;
        if(!value || !*value) continue;

        FUNC6(D_WEB_CLIENT, "%llu: API v1 alarm_count query param '%s' with value '%s'", w->id, name, value);

        char* p = value;
        if(!FUNC9(name, "status")) {
            while ((*p = FUNC10(*p))) p++;
            if (!FUNC9("CRITICAL", value)) status = RRDCALC_STATUS_CRITICAL;
            else if (!FUNC9("WARNING", value)) status = RRDCALC_STATUS_WARNING;
            else if (!FUNC9("UNINITIALIZED", value)) status = RRDCALC_STATUS_UNINITIALIZED;
            else if (!FUNC9("UNDEFINED", value)) status = RRDCALC_STATUS_UNDEFINED;
            else if (!FUNC9("REMOVED", value)) status = RRDCALC_STATUS_REMOVED;
            else if (!FUNC9("CLEAR", value)) status = RRDCALC_STATUS_CLEAR;
        }
        else if(!FUNC9(name, "context") || !FUNC9(name, "ctx")) {
            if(!contexts) contexts = FUNC0(255);
            FUNC5(contexts, "|");
            FUNC5(contexts, value);
        }
    }

    FUNC7(host, w->response.data, contexts, status);

    FUNC4(w->response.data, "]\n");
    w->response.data->contenttype = CT_APPLICATION_JSON;
    FUNC3(w->response.data);

    FUNC2(contexts);
    return 200;
}