#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_6__ {int /*<<< orphan*/  contenttype; } ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  CT_APPLICATION_JSON ; 
 int HTTP_RESP_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 char* FUNC3 (char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

inline int FUNC5(RRDHOST *host, struct web_client *w, char *url) {
    int all = 0;

    while(url) {
        char *value = FUNC3(&url, "&");
        if (!value || !*value) continue;

        if(!FUNC4(value, "all")) all = 1;
        else if(!FUNC4(value, "active")) all = 0;
    }

    FUNC0(w->response.data);
    w->response.data->contenttype = CT_APPLICATION_JSON;
    FUNC2(host, w->response.data, all);
    FUNC1(w->response.data);
    return HTTP_RESP_OK;
}