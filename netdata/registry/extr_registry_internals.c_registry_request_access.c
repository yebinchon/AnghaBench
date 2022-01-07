
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {int usages_count; } ;
typedef int REGISTRY_URL ;
typedef int REGISTRY_PERSON ;
typedef int REGISTRY_MACHINE ;


 int D_REGISTRY ;
 int debug (int ,char*,char*,char*,char*) ;
 TYPE_1__ registry ;
 char* registry_fix_machine_name (char*,size_t*) ;
 char* registry_fix_url (char*,size_t*) ;
 int registry_log (char,int *,int *,int *,char*) ;
 int * registry_machine_get (char*,int ) ;
 int registry_machine_link_to_url (int *,int *,int ) ;
 int * registry_person_get (char*,int ) ;
 int registry_person_link_to_url (int *,int *,int *,char*,size_t,int ) ;
 int * registry_url_get (char*,size_t) ;

REGISTRY_PERSON *registry_request_access(char *person_guid, char *machine_guid, char *url, char *name, time_t when) {
    debug(D_REGISTRY, "registry_request_access('%s', '%s', '%s'): NEW REQUEST", (person_guid)?person_guid:"", machine_guid, url);

    REGISTRY_MACHINE *m = registry_machine_get(machine_guid, when);
    if(!m) return ((void*)0);


    size_t namelen;
    name = registry_fix_machine_name(name, &namelen);

    size_t urllen;
    url = registry_fix_url(url, &urllen);

    REGISTRY_PERSON *p = registry_person_get(person_guid, when);

    REGISTRY_URL *u = registry_url_get(url, urllen);
    registry_person_link_to_url(p, m, u, name, namelen, when);
    registry_machine_link_to_url(m, u, when);

    registry_log('A', p, m, u, name);

    registry.usages_count++;

    return p;
}
