#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_5__ {int /*<<< orphan*/  contenttype; } ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  CT_APPLICATION_JSON ; 
 int HTTP_RESP_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 char* FUNC2 (char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

inline int FUNC5(RRDHOST *host, struct web_client *w, char *url) {
    uint32_t after = 0;

    while(url) {
        char *value = FUNC2(&url, "&");
        if (!value || !*value) continue;

        char *name = FUNC2(&value, "=");
        if(!name || !*name) continue;
        if(!value || !*value) continue;

        if(!FUNC3(name, "after")) after = (uint32_t)FUNC4(value, NULL, 0);
    }

    FUNC0(w->response.data);
    w->response.data->contenttype = CT_APPLICATION_JSON;
    FUNC1(host, w->response.data, after);
    return HTTP_RESP_OK;
}