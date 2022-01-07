
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int timeout; } ;


 TYPE_1__ servers_data ;

uint32_t servers_get_timeout (void) {
    return servers_data.timeout;
}
