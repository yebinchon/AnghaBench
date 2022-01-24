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

/* Variables and functions */
 int /*<<< orphan*/  CT_TEXT_HTML ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int HTTP_RESP_BAD_REQUEST ; 
 int HTTP_RESP_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (char**,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct web_client*,char*) ; 

int FUNC8(RRDHOST *host, struct web_client *w, char *url)
{
    // get the api version
    char *tok = FUNC5(&url, "/");
    if(tok && *tok) {
        FUNC4(D_WEB_CLIENT, "%llu: Searching for API version '%s'.", w->id, tok);
        if(FUNC6(tok, "v1") == 0)
            return FUNC7(host, w, url);
        else {
            FUNC0(w->response.data);
            w->response.data->contenttype = CT_TEXT_HTML;
            FUNC2(w->response.data, "Unsupported API version: ");
            FUNC3(w->response.data, tok);
            return HTTP_RESP_NOT_FOUND;
        }
    }
    else {
        FUNC0(w->response.data);
        FUNC1(w->response.data, "Which API version?");
        return HTTP_RESP_BAD_REQUEST;
    }
}