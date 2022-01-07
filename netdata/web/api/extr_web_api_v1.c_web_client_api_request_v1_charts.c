
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_5__ {int contenttype; } ;
typedef int RRDHOST ;


 int CT_APPLICATION_JSON ;
 int HTTP_RESP_OK ;
 int buffer_flush (TYPE_2__*) ;
 int charts2json (int *,TYPE_2__*) ;

inline int web_client_api_request_v1_charts(RRDHOST *host, struct web_client *w, char *url) {
    (void)url;

    buffer_flush(w->response.data);
    w->response.data->contenttype = CT_APPLICATION_JSON;
    charts2json(host, w->response.data);
    return HTTP_RESP_OK;
}
