
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_6__ {int contenttype; } ;
typedef int RRDHOST ;


 int CT_APPLICATION_JSON ;
 int HTTP_RESP_OK ;
 int buffer_flush (TYPE_2__*) ;
 int buffer_no_cacheable (TYPE_2__*) ;
 int health_alarms2json (int *,TYPE_2__*,int) ;
 char* mystrsep (char**,char*) ;
 int strcmp (char*,char*) ;

inline int web_client_api_request_v1_alarms(RRDHOST *host, struct web_client *w, char *url) {
    int all = 0;

    while(url) {
        char *value = mystrsep(&url, "&");
        if (!value || !*value) continue;

        if(!strcmp(value, "all")) all = 1;
        else if(!strcmp(value, "active")) all = 0;
    }

    buffer_flush(w->response.data);
    w->response.data->contenttype = CT_APPLICATION_JSON;
    health_alarms2json(host, w->response.data, all);
    buffer_no_cacheable(w->response.data);
    return HTTP_RESP_OK;
}
