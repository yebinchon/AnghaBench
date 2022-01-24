#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct web_client {int acl; TYPE_1__ response; scalar_t__ decoded_query_string; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {char* command; scalar_t__ hash; int acl; int (* callback ) (int /*<<< orphan*/ *,struct web_client*,scalar_t__) ;} ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int HTTP_RESP_BAD_REQUEST ; 
 int HTTP_RESP_NOT_FOUND ; 
 int WEB_CLIENT_ACL_NOCHECK ; 
 TYPE_2__* api_commands ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct web_client*,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (struct web_client*) ; 

static inline int FUNC10(RRDHOST *host, struct web_client *w, char *url) {
    static int initialized = 0;
    int i;

    if(FUNC8(initialized == 0)) {
        initialized = 1;

        for(i = 0; api_commands[i].command ; i++)
            api_commands[i].hash = FUNC5(api_commands[i].command);
    }

    // get the command
    if(url) {
        FUNC4(D_WEB_CLIENT, "%llu: Searching for API v1 command '%s'.", w->id, url);
        uint32_t hash = FUNC5(url);

        for(i = 0; api_commands[i].command ;i++) {
            if(FUNC8(hash == api_commands[i].hash && !FUNC6(url, api_commands[i].command))) {
                if(FUNC8(api_commands[i].acl != WEB_CLIENT_ACL_NOCHECK) &&  !(w->acl & api_commands[i].acl))
                    return FUNC9(w);

                //return api_commands[i].callback(host, w, url);
                return api_commands[i].callback(host, w, (w->decoded_query_string + 1));
            }
        }

        FUNC0(w->response.data);
        FUNC2(w->response.data, "Unsupported v1 API command: ");
        FUNC3(w->response.data, url);
        return HTTP_RESP_NOT_FOUND;
    }
    else {
        FUNC0(w->response.data);
        FUNC1(w->response.data, "Which API v1 command?");
        return HTTP_RESP_BAD_REQUEST;
    }
}