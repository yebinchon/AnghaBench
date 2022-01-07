
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


 int CT_TEXT_HTML ;
 int D_WEB_CLIENT ;
 int HTTP_RESP_BAD_REQUEST ;
 int HTTP_RESP_NOT_FOUND ;
 int buffer_flush (TYPE_2__*) ;
 int buffer_sprintf (TYPE_2__*,char*) ;
 int buffer_strcat (TYPE_2__*,char*) ;
 int buffer_strcat_htmlescape (TYPE_2__*,char*) ;
 int debug (int ,char*,int ,char*) ;
 char* mystrsep (char**,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int web_client_api_request_v1 (int *,struct web_client*,char*) ;

int web_client_api_request(RRDHOST *host, struct web_client *w, char *url)
{

    char *tok = mystrsep(&url, "/");
    if(tok && *tok) {
        debug(D_WEB_CLIENT, "%llu: Searching for API version '%s'.", w->id, tok);
        if(strcmp(tok, "v1") == 0)
            return web_client_api_request_v1(host, w, url);
        else {
            buffer_flush(w->response.data);
            w->response.data->contenttype = CT_TEXT_HTML;
            buffer_strcat(w->response.data, "Unsupported API version: ");
            buffer_strcat_htmlescape(w->response.data, tok);
            return HTTP_RESP_NOT_FOUND;
        }
    }
    else {
        buffer_flush(w->response.data);
        buffer_sprintf(w->response.data, "Which API version?");
        return HTTP_RESP_BAD_REQUEST;
    }
}
