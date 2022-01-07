
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REGISTRY_PERSON_URL ;
typedef int REGISTRY_PERSON ;
typedef int REGISTRY_MACHINE ;


 int GUID_LEN ;
 int info (char*,char*,char*,char*) ;
 int regenerate_guid (char*,char*) ;
 char* registry_fix_url (char*,int *) ;
 int * registry_machine_find (char*) ;
 int * registry_person_find (char*) ;
 int * registry_person_url_index_find (int *,char*) ;

REGISTRY_PERSON_URL *registry_verify_request(char *person_guid, char *machine_guid, char *url, REGISTRY_PERSON **pp, REGISTRY_MACHINE **mm) {
    char pbuf[GUID_LEN + 1], mbuf[GUID_LEN + 1];

    if(!person_guid || !*person_guid || !machine_guid || !*machine_guid || !url || !*url) {
        info("Registry Request Verification: invalid request! person: '%s', machine '%s', url '%s'", person_guid?person_guid:"UNSET", machine_guid?machine_guid:"UNSET", url?url:"UNSET");
        return ((void*)0);
    }


    url = registry_fix_url(url, ((void*)0));


    if(regenerate_guid(person_guid, pbuf) == -1) {
        info("Registry Request Verification: invalid person GUID, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return ((void*)0);
    }
    person_guid = pbuf;


    if(regenerate_guid(machine_guid, mbuf) == -1) {
        info("Registry Request Verification: invalid machine GUID, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return ((void*)0);
    }
    machine_guid = mbuf;


    REGISTRY_MACHINE *m = registry_machine_find(machine_guid);
    if(!m) {
        info("Registry Request Verification: machine not found, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return ((void*)0);
    }
    if(mm) *mm = m;


    REGISTRY_PERSON *p = registry_person_find(person_guid);
    if(!p) {
        info("Registry Request Verification: person not found, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return ((void*)0);
    }
    if(pp) *pp = p;

    REGISTRY_PERSON_URL *pu = registry_person_url_index_find(p, url);
    if(!pu) {
        info("Registry Request Verification: URL not found for person, person: '%s', machine '%s', url '%s'", person_guid, machine_guid, url);
        return ((void*)0);
    }





    return pu;
}
