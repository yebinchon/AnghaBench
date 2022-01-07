
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* hostname; } ;


 TYPE_1__ registry ;

char *registry_get_this_machine_hostname(void) {
    return registry.hostname;
}
