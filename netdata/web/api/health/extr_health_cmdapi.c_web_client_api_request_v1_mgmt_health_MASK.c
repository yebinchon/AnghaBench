#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* data; } ;
struct web_client {char* auth_bearer_token; TYPE_1__ response; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {int all_alarms; scalar_t__ stype; int /*<<< orphan*/ * silencers; } ;
struct TYPE_11__ {int /*<<< orphan*/  contenttype; } ;
typedef  int /*<<< orphan*/  SILENCER ;
typedef  int /*<<< orphan*/  RRDHOST ;
typedef  TYPE_2__ BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  CT_APPLICATION_JSON ; 
 int /*<<< orphan*/  CT_TEXT_PLAIN ; 
 int /*<<< orphan*/  D_HEALTH ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 char* HEALTH_CMDAPI_CMD_DISABLE ; 
 char* HEALTH_CMDAPI_CMD_DISABLEALL ; 
 char* HEALTH_CMDAPI_CMD_LIST ; 
 char* HEALTH_CMDAPI_CMD_RESET ; 
 char* HEALTH_CMDAPI_CMD_SILENCE ; 
 char* HEALTH_CMDAPI_CMD_SILENCEALL ; 
 int /*<<< orphan*/  HEALTH_CMDAPI_MSG_ADDED ; 
 int /*<<< orphan*/  HEALTH_CMDAPI_MSG_AUTHERROR ; 
 int /*<<< orphan*/  HEALTH_CMDAPI_MSG_DISABLE ; 
 int /*<<< orphan*/  HEALTH_CMDAPI_MSG_DISABLEALL ; 
 int /*<<< orphan*/  HEALTH_CMDAPI_MSG_NOSELECTORWARNING ; 
 int /*<<< orphan*/  HEALTH_CMDAPI_MSG_RESET ; 
 int /*<<< orphan*/  HEALTH_CMDAPI_MSG_SILENCE ; 
 int /*<<< orphan*/  HEALTH_CMDAPI_MSG_SILENCEALL ; 
 int /*<<< orphan*/  HEALTH_CMDAPI_MSG_STYPEWARNING ; 
 int HTTP_RESP_FORBIDDEN ; 
 int HTTP_RESP_OK ; 
 void* STYPE_DISABLE_ALARMS ; 
 scalar_t__ STYPE_NONE ; 
 void* STYPE_SILENCE_NOTIFICATIONS ; 
 char* api_secret ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (char**,char*) ; 
 TYPE_3__* silencers ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(RRDHOST *host, struct web_client *w, char *url) {
    int ret;
    (void) host;

    BUFFER *wb = w->response.data;
    FUNC1(wb);
    wb->contenttype = CT_TEXT_PLAIN;

    FUNC1(w->response.data);

    //Local instance of the silencer
    SILENCER *silencer = NULL;
    int config_changed = 1;

    if (!w->auth_bearer_token) {
        FUNC3(wb, HEALTH_CMDAPI_MSG_AUTHERROR);
        ret = HTTP_RESP_FORBIDDEN;
    } else {
        FUNC4(D_HEALTH, "HEALTH command API: Comparing secret '%s' to '%s'", w->auth_bearer_token, api_secret);
        if (FUNC12(w->auth_bearer_token, api_secret)) {
            FUNC3(wb, HEALTH_CMDAPI_MSG_AUTHERROR);
            ret = HTTP_RESP_FORBIDDEN;
        } else {
            while (url) {
                char *value = FUNC11(&url, "&");
                if (!value || !*value) continue;

                char *key = FUNC11(&value, "=");
                if (!key || !*key) continue;
                if (!value || !*value) continue;

                FUNC4(D_WEB_CLIENT, "%llu: API v1 health query param '%s' with value '%s'", w->id, key, value);

                // name and value are now the parameters
                if (!FUNC12(key, "cmd")) {
                    if (!FUNC12(value, HEALTH_CMDAPI_CMD_SILENCEALL)) {
                        silencers->all_alarms = 1;
                        silencers->stype = STYPE_SILENCE_NOTIFICATIONS;
                        FUNC3(wb, HEALTH_CMDAPI_MSG_SILENCEALL);
                    } else if (!FUNC12(value, HEALTH_CMDAPI_CMD_DISABLEALL)) {
                        silencers->all_alarms = 1;
                        silencers->stype = STYPE_DISABLE_ALARMS;
                        FUNC3(wb, HEALTH_CMDAPI_MSG_DISABLEALL);
                    } else if (!FUNC12(value, HEALTH_CMDAPI_CMD_SILENCE)) {
                        silencers->stype = STYPE_SILENCE_NOTIFICATIONS;
                        FUNC3(wb, HEALTH_CMDAPI_MSG_SILENCE);
                    } else if (!FUNC12(value, HEALTH_CMDAPI_CMD_DISABLE)) {
                        silencers->stype = STYPE_DISABLE_ALARMS;
                        FUNC3(wb, HEALTH_CMDAPI_MSG_DISABLE);
                    } else if (!FUNC12(value, HEALTH_CMDAPI_CMD_RESET)) {
                        silencers->all_alarms = 0;
                        silencers->stype = STYPE_NONE;
                        FUNC5(silencers->silencers);
                        silencers->silencers = NULL;
                        FUNC3(wb, HEALTH_CMDAPI_MSG_RESET);
                    } else if (!FUNC12(value, HEALTH_CMDAPI_CMD_LIST)) {
                        w->response.data->contenttype = CT_APPLICATION_JSON;
                        FUNC7(wb);
                        config_changed=0;
                    }
                } else {
                    silencer = FUNC9(silencer, key, value);
                }
            }

            if (FUNC10(silencer)) {
                FUNC8(silencer);
                FUNC3(wb, HEALTH_CMDAPI_MSG_ADDED);
                if (silencers->stype == STYPE_NONE) {
                    FUNC3(wb, HEALTH_CMDAPI_MSG_STYPEWARNING);
                }
            }
            if (FUNC13(silencers->stype != STYPE_NONE && !silencers->all_alarms && !silencers->silencers)) {
                FUNC3(wb, HEALTH_CMDAPI_MSG_NOSELECTORWARNING);
            }
            ret = HTTP_RESP_OK;
        }
    }
    w->response.data = wb;
    FUNC2(w->response.data);
    if (ret == HTTP_RESP_OK && config_changed) {
        BUFFER *jsonb = FUNC0(200);
        FUNC7(jsonb);
        FUNC6(jsonb);
    }

    return ret;
}