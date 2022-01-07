
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int servers; } ;


 TYPE_1__ pyb_wdt_obj ;

void pybwdt_srv_alive (void) {
    pyb_wdt_obj.servers = 1;
}
