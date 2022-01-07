
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_9__ {TYPE_6__* data; } ;
struct web_client {TYPE_1__ response; } ;
struct registry_json_walk_person_urls_callback {int member_3; struct web_client* member_2; int * member_1; TYPE_2__* member_0; } ;
struct TYPE_12__ {int contenttype; } ;
struct TYPE_11__ {scalar_t__ verify_cookies_redirects; int registry_to_announce; int enabled; } ;
struct TYPE_10__ {int person_urls; int guid; } ;
typedef int RRDHOST ;
typedef TYPE_2__ REGISTRY_PERSON ;


 int CT_APPLICATION_JSON ;
 int REGISTRY_STATUS_FAILED ;
 int REGISTRY_STATUS_OK ;
 int REGISTRY_VERIFY_COOKIES_GUID ;
 int avl_traverse (int *,int ,struct registry_json_walk_person_urls_callback*) ;
 int buffer_flush (TYPE_6__*) ;
 int buffer_sprintf (TYPE_6__*,char*,int ) ;
 int buffer_strcat (TYPE_6__*,char*) ;
 TYPE_5__ registry ;
 int registry_json_disabled (int *,struct web_client*,char*) ;
 int registry_json_footer (struct web_client*) ;
 int registry_json_header (int *,struct web_client*,char*,int ) ;
 int registry_json_person_url_callback ;
 int registry_lock () ;
 TYPE_2__* registry_request_access (char*,char*,char*,char*,int ) ;
 int registry_set_cookie (struct web_client*,int ) ;
 int registry_set_person_cookie (struct web_client*,TYPE_2__*) ;
 int registry_unlock () ;
 int strcmp (char*,int ) ;
 scalar_t__ unlikely (int) ;

int registry_request_access_json(RRDHOST *host, struct web_client *w, char *person_guid, char *machine_guid, char *url, char *name, time_t when) {
    if(unlikely(!registry.enabled))
        return registry_json_disabled(host, w, "access");




    if(registry.verify_cookies_redirects > 0 && !person_guid[0]) {
        buffer_flush(w->response.data);
        registry_set_cookie(w, REGISTRY_VERIFY_COOKIES_GUID);
        w->response.data->contenttype = CT_APPLICATION_JSON;
        buffer_sprintf(w->response.data, "{ \"status\": \"redirect\", \"registry\": \"%s\" }", registry.registry_to_announce);
        return 200;
    }

    if(unlikely(person_guid[0] && !strcmp(person_guid, REGISTRY_VERIFY_COOKIES_GUID)))
        person_guid[0] = '\0';



    registry_lock();

    REGISTRY_PERSON *p = registry_request_access(person_guid, machine_guid, url, name, when);
    if(!p) {
        registry_json_header(host, w, "access", REGISTRY_STATUS_FAILED);
        registry_json_footer(w);
        registry_unlock();
        return 412;
    }


    registry_set_person_cookie(w, p);


    registry_json_header(host, w, "access", REGISTRY_STATUS_OK);

    buffer_sprintf(w->response.data, ",\n\t\"person_guid\": \"%s\",\n\t\"urls\": [", p->guid);
    struct registry_json_walk_person_urls_callback c = { p, ((void*)0), w, 0 };
    avl_traverse(&p->person_urls, registry_json_person_url_callback, &c);
    buffer_strcat(w->response.data, "\n\t]\n");

    registry_json_footer(w);
    registry_unlock();
    return 200;
}
