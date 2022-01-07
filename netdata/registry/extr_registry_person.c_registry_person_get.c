
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int REGISTRY_PERSON ;


 int D_REGISTRY ;
 int GUID_LEN ;
 int debug (int ,char*,char const*) ;
 int info (char*,char const*) ;
 int regenerate_guid (char const*,char*) ;
 int * registry_person_allocate (int *,int ) ;
 int * registry_person_find (char const*) ;
 scalar_t__ unlikely (int) ;

REGISTRY_PERSON *registry_person_get(const char *person_guid, time_t when) {
    debug(D_REGISTRY, "Registry: registry_person_get('%s'): creating dictionary of urls", person_guid);

    REGISTRY_PERSON *p = ((void*)0);

    if(person_guid && *person_guid) {
        char buf[GUID_LEN + 1];

        if(unlikely(regenerate_guid(person_guid, buf) == -1))
            info("Registry: person guid '%s' is not a valid guid. Ignoring it.", person_guid);
        else {
            person_guid = buf;
            p = registry_person_find(person_guid);
        }
    }

    if(!p) p = registry_person_allocate(((void*)0), when);

    return p;
}
