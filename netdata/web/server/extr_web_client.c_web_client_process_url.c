
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {TYPE_2__* data; } ;
struct web_client {TYPE_1__ response; int last_url; int id; } ;
struct TYPE_9__ {void* contenttype; } ;
typedef int RRDSET ;
typedef int RRDHOST ;


 void* CT_TEXT_HTML ;
 void* CT_TEXT_PLAIN ;
 int D_RRD_STATS ;
 int D_WEB_CLIENT ;
 int D_WEB_CLIENT_ACCESS ;
 int FILENAME_MAX ;
 int HTTP_RESP_BAD_REQUEST ;
 int HTTP_RESP_NOT_FOUND ;
 int HTTP_RESP_OK ;
 int RRDSET_FLAG_DEBUG ;
 int buffer_char_replace (TYPE_2__*,char,char) ;
 int buffer_flush (TYPE_2__*) ;
 int buffer_sprintf (TYPE_2__*,char*,char*) ;
 int buffer_strcat (TYPE_2__*,char*) ;
 int buffer_strcat_htmlescape (TYPE_2__*,char*) ;
 int check_host_and_call (int *,struct web_client*,char*,int ) ;
 int config_generate (TYPE_2__*,int ) ;
 int debug (int ,char*,int ,...) ;
 int debug_flags ;
 int error (char*) ;
 scalar_t__ likely (int ) ;
 int mysendfile (struct web_client*,char*) ;
 char* mystrsep (char**,char*) ;
 int netdata_cleanup_and_exit (int ) ;
 int netdata_exit ;
 int * rrdset_find (int *,char*) ;
 int * rrdset_find_byname (int *,char*) ;
 scalar_t__ rrdset_flag_check (int *,int ) ;
 int rrdset_flag_clear (int *,int ) ;
 int rrdset_flag_set (int *,int ) ;
 scalar_t__ simple_hash (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strncpyz (char*,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int web_client_api_request ;
 int web_client_can_access_netdataconf (struct web_client*) ;
 int web_client_permission_denied (struct web_client*) ;
 int web_client_switch_host (int *,struct web_client*,char*) ;

__attribute__((used)) static inline int web_client_process_url(RRDHOST *host, struct web_client *w, char *url) {
    static uint32_t
            hash_api = 0,
            hash_netdata_conf = 0,
            hash_host = 0;





    if(unlikely(!hash_api)) {
        hash_api = simple_hash("api");
        hash_netdata_conf = simple_hash("netdata.conf");
        hash_host = simple_hash("host");





    }

    char *tok = mystrsep(&url, "/?");
    if(likely(tok && *tok)) {
        uint32_t hash = simple_hash(tok);
        debug(D_WEB_CLIENT, "%llu: Processing command '%s'.", w->id, tok);

        if(unlikely(hash == hash_api && strcmp(tok, "api") == 0)) {
            debug(D_WEB_CLIENT_ACCESS, "%llu: API request ...", w->id);
            return check_host_and_call(host, w, url, web_client_api_request);
        }
        else if(unlikely(hash == hash_host && strcmp(tok, "host") == 0)) {
            debug(D_WEB_CLIENT_ACCESS, "%llu: host switch request ...", w->id);
            return web_client_switch_host(host, w, url);
        }
        else if(unlikely(hash == hash_netdata_conf && strcmp(tok, "netdata.conf") == 0)) {
            if(unlikely(!web_client_can_access_netdataconf(w)))
                return web_client_permission_denied(w);

            debug(D_WEB_CLIENT_ACCESS, "%llu: generating netdata.conf ...", w->id);
            w->response.data->contenttype = CT_TEXT_PLAIN;
            buffer_flush(w->response.data);
            config_generate(w->response.data, 0);
            return HTTP_RESP_OK;
        }
    }

    char filename[FILENAME_MAX+1];
    url = filename;
    strncpyz(filename, w->last_url, FILENAME_MAX);
    tok = mystrsep(&url, "?");
    buffer_flush(w->response.data);
    return mysendfile(w, (tok && *tok)?tok:"/");
}
