
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int time_t ;
struct machine_request_callback_data {scalar_t__ result; int * member_1; TYPE_4__* member_0; } ;
struct TYPE_13__ {char* guid; } ;
struct TYPE_12__ {int person_urls; int guid; } ;
struct TYPE_11__ {TYPE_1__* url; } ;
struct TYPE_10__ {int url; } ;
typedef TYPE_2__ REGISTRY_PERSON_URL ;
typedef TYPE_3__ REGISTRY_PERSON ;
typedef TYPE_4__ REGISTRY_MACHINE ;


 int GUID_LEN ;
 int avl_traverse (int *,int ,struct machine_request_callback_data*) ;
 int info (char*,int ,char*,int ,char*) ;
 int machine_request_callback ;
 int regenerate_guid (char*,char*) ;
 TYPE_4__* registry_machine_find (char*) ;
 TYPE_2__* registry_verify_request (char*,char*,char*,TYPE_3__**,TYPE_4__**) ;

REGISTRY_MACHINE *registry_request_machine(char *person_guid, char *machine_guid, char *url, char *request_machine, time_t when) {
    (void)when;

    char mbuf[GUID_LEN + 1];

    REGISTRY_PERSON *p = ((void*)0);
    REGISTRY_MACHINE *m = ((void*)0);
    REGISTRY_PERSON_URL *pu = registry_verify_request(person_guid, machine_guid, url, &p, &m);
    if(!pu || !p || !m) return ((void*)0);


    if(regenerate_guid(request_machine, mbuf) == -1) {
        info("Registry Machine URLs request: invalid machine GUID, person: '%s', machine '%s', url '%s', request machine '%s'", p->guid, m->guid, pu->url->url, request_machine);
        return ((void*)0);
    }
    request_machine = mbuf;


    m = registry_machine_find(request_machine);
    if(!m) {
        info("Registry Machine URLs request: machine not found, person: '%s', machine '%s', url '%s', request machine '%s'", p->guid, machine_guid, pu->url->url, request_machine);
        return ((void*)0);
    }






    struct machine_request_callback_data rdata = { m, ((void*)0) };


    avl_traverse(&p->person_urls, machine_request_callback, &rdata);

    if(rdata.result)
        return m;

    return ((void*)0);
}
