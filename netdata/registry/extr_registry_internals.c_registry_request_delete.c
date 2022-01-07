
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int time_t ;
struct TYPE_18__ {int guid; } ;
struct TYPE_17__ {int guid; } ;
struct TYPE_16__ {TYPE_14__* url; } ;
struct TYPE_15__ {int url; } ;
typedef TYPE_1__ REGISTRY_PERSON_URL ;
typedef TYPE_2__ REGISTRY_PERSON ;
typedef TYPE_3__ REGISTRY_MACHINE ;


 int info (char*,int ,int ,int ,char*) ;
 char* registry_fix_url (char*,int *) ;
 int registry_log (char,TYPE_2__*,TYPE_3__*,TYPE_14__*,int ) ;
 int registry_person_unlink_from_url (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* registry_person_url_index_find (TYPE_2__*,char*) ;
 TYPE_1__* registry_verify_request (char*,char*,char*,TYPE_2__**,TYPE_3__**) ;

REGISTRY_PERSON *registry_request_delete(char *person_guid, char *machine_guid, char *url, char *delete_url, time_t when) {
    (void) when;

    REGISTRY_PERSON *p = ((void*)0);
    REGISTRY_MACHINE *m = ((void*)0);
    REGISTRY_PERSON_URL *pu = registry_verify_request(person_guid, machine_guid, url, &p, &m);
    if(!pu || !p || !m) return ((void*)0);


    delete_url = registry_fix_url(delete_url, ((void*)0));
    REGISTRY_PERSON_URL *dpu = registry_person_url_index_find(p, delete_url);
    if(!dpu) {
        info("Registry Delete Request: URL not found for person: '%s', machine '%s', url '%s', delete url '%s'", p->guid
             , m->guid, pu->url->url, delete_url);
        return ((void*)0);
    }

    registry_log('D', p, m, pu->url, dpu->url->url);
    registry_person_unlink_from_url(p, dpu);

    return p;
}
