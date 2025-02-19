
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* data; } ;
struct web_client {char* auth_bearer_token; TYPE_1__ response; int id; } ;
struct TYPE_12__ {int all_alarms; scalar_t__ stype; int * silencers; } ;
struct TYPE_11__ {int contenttype; } ;
typedef int SILENCER ;
typedef int RRDHOST ;
typedef TYPE_2__ BUFFER ;


 int CT_APPLICATION_JSON ;
 int CT_TEXT_PLAIN ;
 int D_HEALTH ;
 int D_WEB_CLIENT ;
 char* HEALTH_CMDAPI_CMD_DISABLE ;
 char* HEALTH_CMDAPI_CMD_DISABLEALL ;
 char* HEALTH_CMDAPI_CMD_LIST ;
 char* HEALTH_CMDAPI_CMD_RESET ;
 char* HEALTH_CMDAPI_CMD_SILENCE ;
 char* HEALTH_CMDAPI_CMD_SILENCEALL ;
 int HEALTH_CMDAPI_MSG_ADDED ;
 int HEALTH_CMDAPI_MSG_AUTHERROR ;
 int HEALTH_CMDAPI_MSG_DISABLE ;
 int HEALTH_CMDAPI_MSG_DISABLEALL ;
 int HEALTH_CMDAPI_MSG_NOSELECTORWARNING ;
 int HEALTH_CMDAPI_MSG_RESET ;
 int HEALTH_CMDAPI_MSG_SILENCE ;
 int HEALTH_CMDAPI_MSG_SILENCEALL ;
 int HEALTH_CMDAPI_MSG_STYPEWARNING ;
 int HTTP_RESP_FORBIDDEN ;
 int HTTP_RESP_OK ;
 void* STYPE_DISABLE_ALARMS ;
 scalar_t__ STYPE_NONE ;
 void* STYPE_SILENCE_NOTIFICATIONS ;
 char* api_secret ;
 TYPE_2__* buffer_create (int) ;
 int buffer_flush (TYPE_2__*) ;
 int buffer_no_cacheable (TYPE_2__*) ;
 int buffer_strcat (TYPE_2__*,int ) ;
 int debug (int ,char*,char*,char*,...) ;
 int free_silencers (int *) ;
 int health_silencers2file (TYPE_2__*) ;
 int health_silencers2json (TYPE_2__*) ;
 int health_silencers_add (int *) ;
 int * health_silencers_addparam (int *,char*,char*) ;
 scalar_t__ likely (int *) ;
 char* mystrsep (char**,char*) ;
 TYPE_3__* silencers ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ unlikely (int) ;

int web_client_api_request_v1_mgmt_health(RRDHOST *host, struct web_client *w, char *url) {
    int ret;
    (void) host;

    BUFFER *wb = w->response.data;
    buffer_flush(wb);
    wb->contenttype = CT_TEXT_PLAIN;

    buffer_flush(w->response.data);


    SILENCER *silencer = ((void*)0);
    int config_changed = 1;

    if (!w->auth_bearer_token) {
        buffer_strcat(wb, HEALTH_CMDAPI_MSG_AUTHERROR);
        ret = HTTP_RESP_FORBIDDEN;
    } else {
        debug(D_HEALTH, "HEALTH command API: Comparing secret '%s' to '%s'", w->auth_bearer_token, api_secret);
        if (strcmp(w->auth_bearer_token, api_secret)) {
            buffer_strcat(wb, HEALTH_CMDAPI_MSG_AUTHERROR);
            ret = HTTP_RESP_FORBIDDEN;
        } else {
            while (url) {
                char *value = mystrsep(&url, "&");
                if (!value || !*value) continue;

                char *key = mystrsep(&value, "=");
                if (!key || !*key) continue;
                if (!value || !*value) continue;

                debug(D_WEB_CLIENT, "%llu: API v1 health query param '%s' with value '%s'", w->id, key, value);


                if (!strcmp(key, "cmd")) {
                    if (!strcmp(value, HEALTH_CMDAPI_CMD_SILENCEALL)) {
                        silencers->all_alarms = 1;
                        silencers->stype = STYPE_SILENCE_NOTIFICATIONS;
                        buffer_strcat(wb, HEALTH_CMDAPI_MSG_SILENCEALL);
                    } else if (!strcmp(value, HEALTH_CMDAPI_CMD_DISABLEALL)) {
                        silencers->all_alarms = 1;
                        silencers->stype = STYPE_DISABLE_ALARMS;
                        buffer_strcat(wb, HEALTH_CMDAPI_MSG_DISABLEALL);
                    } else if (!strcmp(value, HEALTH_CMDAPI_CMD_SILENCE)) {
                        silencers->stype = STYPE_SILENCE_NOTIFICATIONS;
                        buffer_strcat(wb, HEALTH_CMDAPI_MSG_SILENCE);
                    } else if (!strcmp(value, HEALTH_CMDAPI_CMD_DISABLE)) {
                        silencers->stype = STYPE_DISABLE_ALARMS;
                        buffer_strcat(wb, HEALTH_CMDAPI_MSG_DISABLE);
                    } else if (!strcmp(value, HEALTH_CMDAPI_CMD_RESET)) {
                        silencers->all_alarms = 0;
                        silencers->stype = STYPE_NONE;
                        free_silencers(silencers->silencers);
                        silencers->silencers = ((void*)0);
                        buffer_strcat(wb, HEALTH_CMDAPI_MSG_RESET);
                    } else if (!strcmp(value, HEALTH_CMDAPI_CMD_LIST)) {
                        w->response.data->contenttype = CT_APPLICATION_JSON;
                        health_silencers2json(wb);
                        config_changed=0;
                    }
                } else {
                    silencer = health_silencers_addparam(silencer, key, value);
                }
            }

            if (likely(silencer)) {
                health_silencers_add(silencer);
                buffer_strcat(wb, HEALTH_CMDAPI_MSG_ADDED);
                if (silencers->stype == STYPE_NONE) {
                    buffer_strcat(wb, HEALTH_CMDAPI_MSG_STYPEWARNING);
                }
            }
            if (unlikely(silencers->stype != STYPE_NONE && !silencers->all_alarms && !silencers->silencers)) {
                buffer_strcat(wb, HEALTH_CMDAPI_MSG_NOSELECTORWARNING);
            }
            ret = HTTP_RESP_OK;
        }
    }
    w->response.data = wb;
    buffer_no_cacheable(w->response.data);
    if (ret == HTTP_RESP_OK && config_changed) {
        BUFFER *jsonb = buffer_create(200);
        health_silencers2json(jsonb);
        health_silencers2file(jsonb);
    }

    return ret;
}
