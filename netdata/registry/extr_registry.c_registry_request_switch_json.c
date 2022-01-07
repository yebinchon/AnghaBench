
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_6__ {int data; } ;
struct web_client {TYPE_1__ response; } ;
struct registry_person_url_callback_verify_machine_exists_data {scalar_t__ count; int member_1; int * member_0; } ;
struct TYPE_8__ {int enabled; } ;
struct TYPE_7__ {int guid; int person_urls; } ;
typedef int RRDHOST ;
typedef TYPE_2__ REGISTRY_PERSON ;
typedef int REGISTRY_MACHINE ;


 int REGISTRY_STATUS_FAILED ;
 int REGISTRY_STATUS_OK ;
 int avl_traverse (int *,int ,struct registry_person_url_callback_verify_machine_exists_data*) ;
 int buffer_sprintf (int ,char*,int ) ;
 TYPE_5__ registry ;
 int registry_json_disabled (int *,struct web_client*,char*) ;
 int registry_json_footer (struct web_client*) ;
 int registry_json_header (int *,struct web_client*,char*,int ) ;
 int registry_lock () ;
 int * registry_machine_find (char*) ;
 TYPE_2__* registry_person_find (char*) ;
 int registry_person_url_callback_verify_machine_exists ;
 int registry_set_person_cookie (struct web_client*,TYPE_2__*) ;
 int registry_unlock () ;

int registry_request_switch_json(RRDHOST *host, struct web_client *w, char *person_guid, char *machine_guid, char *url, char *new_person_guid, time_t when) {
    if(!registry.enabled)
        return registry_json_disabled(host, w, "switch");

    (void)url;
    (void)when;

    registry_lock();

    REGISTRY_PERSON *op = registry_person_find(person_guid);
    if(!op) {
        registry_json_header(host, w, "switch", REGISTRY_STATUS_FAILED);
        registry_json_footer(w);
        registry_unlock();
        return 430;
    }

    REGISTRY_PERSON *np = registry_person_find(new_person_guid);
    if(!np) {
        registry_json_header(host, w, "switch", REGISTRY_STATUS_FAILED);
        registry_json_footer(w);
        registry_unlock();
        return 431;
    }

    REGISTRY_MACHINE *m = registry_machine_find(machine_guid);
    if(!m) {
        registry_json_header(host, w, "switch", REGISTRY_STATUS_FAILED);
        registry_json_footer(w);
        registry_unlock();
        return 432;
    }

    struct registry_person_url_callback_verify_machine_exists_data data = { m, 0 };


    avl_traverse(&op->person_urls, registry_person_url_callback_verify_machine_exists, &data);
    if(!data.count) {
        registry_json_header(host, w, "switch", REGISTRY_STATUS_FAILED);
        registry_json_footer(w);
        registry_unlock();
        return 433;
    }


    data.count = 0;
    avl_traverse(&np->person_urls, registry_person_url_callback_verify_machine_exists, &data);
    if(!data.count) {
        registry_json_header(host, w, "switch", REGISTRY_STATUS_FAILED);
        registry_json_footer(w);
        registry_unlock();
        return 434;
    }



    registry_set_person_cookie(w, np);


    registry_json_header(host, w, "switch", REGISTRY_STATUS_OK);
    buffer_sprintf(w->response.data, ",\n\t\"person_guid\": \"%s\"", np->guid);
    registry_json_footer(w);

    registry_unlock();
    return 200;
}
