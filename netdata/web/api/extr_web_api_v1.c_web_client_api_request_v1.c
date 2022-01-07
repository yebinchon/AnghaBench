
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int data; } ;
struct web_client {int acl; TYPE_1__ response; scalar_t__ decoded_query_string; int id; } ;
struct TYPE_4__ {char* command; scalar_t__ hash; int acl; int (* callback ) (int *,struct web_client*,scalar_t__) ;} ;
typedef int RRDHOST ;


 int D_WEB_CLIENT ;
 int HTTP_RESP_BAD_REQUEST ;
 int HTTP_RESP_NOT_FOUND ;
 int WEB_CLIENT_ACL_NOCHECK ;
 TYPE_2__* api_commands ;
 int buffer_flush (int ) ;
 int buffer_sprintf (int ,char*) ;
 int buffer_strcat (int ,char*) ;
 int buffer_strcat_htmlescape (int ,char*) ;
 int debug (int ,char*,int ,char*) ;
 void* simple_hash (char*) ;
 int strcmp (char*,char*) ;
 int stub1 (int *,struct web_client*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int web_client_permission_denied (struct web_client*) ;

inline int web_client_api_request_v1(RRDHOST *host, struct web_client *w, char *url) {
    static int initialized = 0;
    int i;

    if(unlikely(initialized == 0)) {
        initialized = 1;

        for(i = 0; api_commands[i].command ; i++)
            api_commands[i].hash = simple_hash(api_commands[i].command);
    }


    if(url) {
        debug(D_WEB_CLIENT, "%llu: Searching for API v1 command '%s'.", w->id, url);
        uint32_t hash = simple_hash(url);

        for(i = 0; api_commands[i].command ;i++) {
            if(unlikely(hash == api_commands[i].hash && !strcmp(url, api_commands[i].command))) {
                if(unlikely(api_commands[i].acl != WEB_CLIENT_ACL_NOCHECK) && !(w->acl & api_commands[i].acl))
                    return web_client_permission_denied(w);


                return api_commands[i].callback(host, w, (w->decoded_query_string + 1));
            }
        }

        buffer_flush(w->response.data);
        buffer_strcat(w->response.data, "Unsupported v1 API command: ");
        buffer_strcat_htmlescape(w->response.data, url);
        return HTTP_RESP_NOT_FOUND;
    }
    else {
        buffer_flush(w->response.data);
        buffer_sprintf(w->response.data, "Which API v1 command?");
        return HTTP_RESP_BAD_REQUEST;
    }
}
