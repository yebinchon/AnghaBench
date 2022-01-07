
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_8__ {int contenttype; } ;
struct TYPE_7__ {int machine_guid; int registry_hostname; } ;
typedef TYPE_2__ RRDHOST ;


 int CT_APPLICATION_JSON ;
 int buffer_flush (TYPE_4__*) ;
 int buffer_sprintf (TYPE_4__*,char*,char const*,char const*,int ,int ) ;

__attribute__((used)) static inline void registry_json_header(RRDHOST *host, struct web_client *w, const char *action, const char *status) {
    buffer_flush(w->response.data);
    w->response.data->contenttype = CT_APPLICATION_JSON;
    buffer_sprintf(w->response.data, "{\n\t\"action\": \"%s\",\n\t\"status\": \"%s\",\n\t\"hostname\": \"%s\",\n\t\"machine_guid\": \"%s\"",
            action, status, host->registry_hostname, host->machine_guid);
}
