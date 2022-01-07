
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_2__* data; } ;
struct web_client {char* last_url; TYPE_1__ response; int id; } ;
struct TYPE_6__ {int contenttype; } ;
typedef int RRDHOST ;


 int CT_TEXT_HTML ;
 int D_WEB_CLIENT ;
 int HTTP_RESP_BAD_REQUEST ;
 int HTTP_RESP_NOT_FOUND ;
 scalar_t__ NETDATA_WEB_REQUEST_URL_SIZE ;
 int buffer_flush (TYPE_2__*) ;
 int buffer_strcat (TYPE_2__*,char*) ;
 int buffer_strcat_htmlescape (TYPE_2__*,char*) ;
 int debug (int ,char*,int ,char*) ;
 int * localhost ;
 char* mystrsep (char**,char*) ;
 int * rrdhost_find_by_guid (char*,scalar_t__) ;
 int * rrdhost_find_by_hostname (char*,scalar_t__) ;
 scalar_t__ simple_hash (char*) ;
 int strncpyz (char*,char*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int web_client_process_url (int *,struct web_client*,char*) ;

__attribute__((used)) static inline int web_client_switch_host(RRDHOST *host, struct web_client *w, char *url) {
    static uint32_t hash_localhost = 0;

    if(unlikely(!hash_localhost)) {
        hash_localhost = simple_hash("localhost");
    }

    if(host != localhost) {
        buffer_flush(w->response.data);
        buffer_strcat(w->response.data, "Nesting of hosts is not allowed.");
        return HTTP_RESP_BAD_REQUEST;
    }

    char *tok = mystrsep(&url, "/");
    if(tok && *tok) {
        debug(D_WEB_CLIENT, "%llu: Searching for host with name '%s'.", w->id, tok);


        w->last_url[0] = '/';
        if(url && *url) strncpyz(&w->last_url[1], url, NETDATA_WEB_REQUEST_URL_SIZE - 1);
        else w->last_url[1] = '\0';

        uint32_t hash = simple_hash(tok);

        host = rrdhost_find_by_hostname(tok, hash);
        if(!host) host = rrdhost_find_by_guid(tok, hash);

        if(host) return web_client_process_url(host, w, url);
    }

    buffer_flush(w->response.data);
    w->response.data->contenttype = CT_TEXT_HTML;
    buffer_strcat(w->response.data, "This netdata does not maintain a database for host: ");
    buffer_strcat_htmlescape(w->response.data, tok?tok:"");
    return HTTP_RESP_NOT_FOUND;
}
