
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; int id; } ;
struct TYPE_7__ {int contenttype; } ;
typedef int RRDHOST ;
typedef int RRDCALC_STATUS ;
typedef int BUFFER ;


 int CT_APPLICATION_JSON ;
 int D_WEB_CLIENT ;
 int RRDCALC_STATUS_CLEAR ;
 int RRDCALC_STATUS_CRITICAL ;
 int RRDCALC_STATUS_RAISED ;
 int RRDCALC_STATUS_REMOVED ;
 int RRDCALC_STATUS_UNDEFINED ;
 int RRDCALC_STATUS_UNINITIALIZED ;
 int RRDCALC_STATUS_WARNING ;
 int * buffer_create (int) ;
 int buffer_flush (TYPE_2__*) ;
 int buffer_free (int *) ;
 int buffer_no_cacheable (TYPE_2__*) ;
 int buffer_sprintf (TYPE_2__*,char*) ;
 int buffer_strcat (int *,char*) ;
 int debug (int ,char*,int ,char*,char*) ;
 int health_aggregate_alarms (int *,TYPE_2__*,int *,int ) ;
 char* mystrsep (char**,char*) ;
 int strcmp (char*,char*) ;
 char toupper (char) ;

inline int web_client_api_request_v1_alarm_count(RRDHOST *host, struct web_client *w, char *url) {
    RRDCALC_STATUS status = RRDCALC_STATUS_RAISED;
    BUFFER *contexts = ((void*)0);

    buffer_flush(w->response.data);
    buffer_sprintf(w->response.data, "[");

    while(url) {
        char *value = mystrsep(&url, "&");
        if(!value || !*value) continue;

        char *name = mystrsep(&value, "=");
        if(!name || !*name) continue;
        if(!value || !*value) continue;

        debug(D_WEB_CLIENT, "%llu: API v1 alarm_count query param '%s' with value '%s'", w->id, name, value);

        char* p = value;
        if(!strcmp(name, "status")) {
            while ((*p = toupper(*p))) p++;
            if (!strcmp("CRITICAL", value)) status = RRDCALC_STATUS_CRITICAL;
            else if (!strcmp("WARNING", value)) status = RRDCALC_STATUS_WARNING;
            else if (!strcmp("UNINITIALIZED", value)) status = RRDCALC_STATUS_UNINITIALIZED;
            else if (!strcmp("UNDEFINED", value)) status = RRDCALC_STATUS_UNDEFINED;
            else if (!strcmp("REMOVED", value)) status = RRDCALC_STATUS_REMOVED;
            else if (!strcmp("CLEAR", value)) status = RRDCALC_STATUS_CLEAR;
        }
        else if(!strcmp(name, "context") || !strcmp(name, "ctx")) {
            if(!contexts) contexts = buffer_create(255);
            buffer_strcat(contexts, "|");
            buffer_strcat(contexts, value);
        }
    }

    health_aggregate_alarms(host, w->response.data, contexts, status);

    buffer_sprintf(w->response.data, "]\n");
    w->response.data->contenttype = CT_APPLICATION_JSON;
    buffer_no_cacheable(w->response.data);

    buffer_free(contexts);
    return 200;
}
