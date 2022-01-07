
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int code; TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_5__ {int contenttype; } ;


 int CT_TEXT_PLAIN ;
 int HTTP_RESP_FORBIDDEN ;
 int buffer_flush (TYPE_2__*) ;
 int buffer_strcat (TYPE_2__*,char*) ;

inline int web_client_permission_denied(struct web_client *w) {
    w->response.data->contenttype = CT_TEXT_PLAIN;
    buffer_flush(w->response.data);
    buffer_strcat(w->response.data, "You are not allowed to access this resource.");
    w->response.code = HTTP_RESP_FORBIDDEN;
    return HTTP_RESP_FORBIDDEN;
}
