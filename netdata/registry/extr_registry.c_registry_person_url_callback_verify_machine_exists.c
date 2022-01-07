
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct registry_person_url_callback_verify_machine_exists_data {int count; int * m; } ;
struct TYPE_2__ {int * machine; } ;
typedef TYPE_1__ REGISTRY_PERSON_URL ;
typedef int REGISTRY_MACHINE ;



__attribute__((used)) static inline int registry_person_url_callback_verify_machine_exists(void *entry, void *data) {
    struct registry_person_url_callback_verify_machine_exists_data *d = (struct registry_person_url_callback_verify_machine_exists_data *)data;
    REGISTRY_PERSON_URL *pu = (REGISTRY_PERSON_URL *)entry;
    REGISTRY_MACHINE *m = d->m;

    if(pu->machine == m)
        d->count++;

    return 0;
}
