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
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_2__* data; } ;
struct web_client {char* last_url; TYPE_1__ response; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  contenttype; } ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  CT_TEXT_HTML ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int HTTP_RESP_BAD_REQUEST ; 
 int HTTP_RESP_NOT_FOUND ; 
 scalar_t__ NETDATA_WEB_REQUEST_URL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * localhost ; 
 char* FUNC4 (char**,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (char*,scalar_t__) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct web_client*,char*) ; 

__attribute__((used)) static inline int FUNC11(RRDHOST *host, struct web_client *w, char *url) {
    static uint32_t hash_localhost = 0;

    if(FUNC9(!hash_localhost)) {
        hash_localhost = FUNC7("localhost");
    }

    if(host != localhost) {
        FUNC0(w->response.data);
        FUNC1(w->response.data, "Nesting of hosts is not allowed.");
        return HTTP_RESP_BAD_REQUEST;
    }

    char *tok = FUNC4(&url, "/");
    if(tok && *tok) {
        FUNC3(D_WEB_CLIENT, "%llu: Searching for host with name '%s'.", w->id, tok);

        // copy the URL, we need it to serve files
        w->last_url[0] = '/';
        if(url && *url) FUNC8(&w->last_url[1], url, NETDATA_WEB_REQUEST_URL_SIZE - 1);
        else w->last_url[1] = '\0';

        uint32_t hash = FUNC7(tok);

        host = FUNC6(tok, hash);
        if(!host) host = FUNC5(tok, hash);

        if(host) return FUNC10(host, w, url);
    }

    FUNC0(w->response.data);
    w->response.data->contenttype = CT_TEXT_HTML;
    FUNC1(w->response.data, "This netdata does not maintain a database for host: ");
    FUNC2(w->response.data, tok?tok:"");
    return HTTP_RESP_NOT_FOUND;
}