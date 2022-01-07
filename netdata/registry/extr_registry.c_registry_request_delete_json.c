
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct web_client {int dummy; } ;
struct TYPE_2__ {int enabled; } ;
typedef int RRDHOST ;
typedef int REGISTRY_PERSON ;


 int REGISTRY_STATUS_FAILED ;
 int REGISTRY_STATUS_OK ;
 TYPE_1__ registry ;
 int registry_json_disabled (int *,struct web_client*,char*) ;
 int registry_json_footer (struct web_client*) ;
 int registry_json_header (int *,struct web_client*,char*,int ) ;
 int registry_lock () ;
 int * registry_request_delete (char*,char*,char*,char*,int ) ;
 int registry_unlock () ;

int registry_request_delete_json(RRDHOST *host, struct web_client *w, char *person_guid, char *machine_guid, char *url, char *delete_url, time_t when) {
    if(!registry.enabled)
        return registry_json_disabled(host, w, "delete");

    registry_lock();

    REGISTRY_PERSON *p = registry_request_delete(person_guid, machine_guid, url, delete_url, when);
    if(!p) {
        registry_json_header(host, w, "delete", REGISTRY_STATUS_FAILED);
        registry_json_footer(w);
        registry_unlock();
        return 412;
    }


    registry_json_header(host, w, "delete", REGISTRY_STATUS_OK);
    registry_json_footer(w);
    registry_unlock();
    return 200;
}
