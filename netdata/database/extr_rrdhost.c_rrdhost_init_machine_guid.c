
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* machine_guid; int hash_machine_guid; } ;
typedef TYPE_1__ RRDHOST ;


 size_t GUID_LEN ;
 int simple_hash (char*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static inline void rrdhost_init_machine_guid(RRDHOST *host, const char *machine_guid) {
    strncpy(host->machine_guid, machine_guid, GUID_LEN);
    host->machine_guid[GUID_LEN] = '\0';
    host->hash_machine_guid = simple_hash(host->machine_guid);
}
