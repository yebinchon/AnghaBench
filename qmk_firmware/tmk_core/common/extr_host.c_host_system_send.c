
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int (* send_system ) (scalar_t__) ;} ;


 TYPE_1__* driver ;
 scalar_t__ last_system_report ;
 int stub1 (scalar_t__) ;

void host_system_send(uint16_t report) {
    if (report == last_system_report) return;
    last_system_report = report;

    if (!driver) return;
    (*driver->send_system)(report);
}
