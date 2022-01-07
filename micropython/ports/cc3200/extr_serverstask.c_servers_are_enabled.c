
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;


 TYPE_1__ servers_data ;

bool servers_are_enabled (void) {
    return servers_data.enabled;
}
