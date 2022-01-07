
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_5__ {int data; } ;
struct web_client {TYPE_1__ response; } ;
struct registry_json_walk_person_urls_callback {int member_3; struct web_client* member_2; TYPE_2__* member_1; int * member_0; } ;
struct TYPE_7__ {int enabled; } ;
struct TYPE_6__ {int machine_urls; } ;
typedef int RRDHOST ;
typedef TYPE_2__ REGISTRY_MACHINE ;


 int REGISTRY_STATUS_FAILED ;
 int REGISTRY_STATUS_OK ;
 int buffer_strcat (int ,char*) ;
 int dictionary_get_all (int ,int ,struct registry_json_walk_person_urls_callback*) ;
 TYPE_4__ registry ;
 int registry_json_disabled (int *,struct web_client*,char*) ;
 int registry_json_footer (struct web_client*) ;
 int registry_json_header (int *,struct web_client*,char*,int ) ;
 int registry_json_machine_url_callback ;
 int registry_lock () ;
 TYPE_2__* registry_request_machine (char*,char*,char*,char*,int ) ;
 int registry_unlock () ;

int registry_request_search_json(RRDHOST *host, struct web_client *w, char *person_guid, char *machine_guid, char *url, char *request_machine, time_t when) {
    if(!registry.enabled)
        return registry_json_disabled(host, w, "search");

    registry_lock();

    REGISTRY_MACHINE *m = registry_request_machine(person_guid, machine_guid, url, request_machine, when);
    if(!m) {
        registry_json_header(host, w, "search", REGISTRY_STATUS_FAILED);
        registry_json_footer(w);
        registry_unlock();
        return 404;
    }

    registry_json_header(host, w, "search", REGISTRY_STATUS_OK);

    buffer_strcat(w->response.data, ",\n\t\"urls\": [");
    struct registry_json_walk_person_urls_callback c = { ((void*)0), m, w, 0 };
    dictionary_get_all(m->machine_urls, registry_json_machine_url_callback, &c);
    buffer_strcat(w->response.data, "\n\t]\n");

    registry_json_footer(w);
    registry_unlock();
    return 200;
}
