
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int REGISTRY_MACHINE ;


 int GUID_LEN ;
 int info (char*,char const*) ;
 scalar_t__ likely (int ) ;
 int regenerate_guid (char const*,char*) ;
 int * registry_machine_allocate (char const*,int ) ;
 int * registry_machine_find (char const*) ;
 scalar_t__ unlikely (int) ;

REGISTRY_MACHINE *registry_machine_get(const char *machine_guid, time_t when) {
    REGISTRY_MACHINE *m = ((void*)0);

    if(likely(machine_guid && *machine_guid)) {

        char buf[GUID_LEN + 1];
        if(unlikely(regenerate_guid(machine_guid, buf) == -1))
            info("Registry: machine guid '%s' is not a valid guid. Ignoring it.", machine_guid);
        else {
            machine_guid = buf;
            m = registry_machine_find(machine_guid);
            if(!m) m = registry_machine_allocate(machine_guid, when);
        }
    }

    return m;
}
