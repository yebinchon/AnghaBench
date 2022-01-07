
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int report_id; } ;
typedef TYPE_1__ report_mouse_t ;
struct TYPE_6__ {int (* send_mouse ) (TYPE_1__*) ;} ;


 int REPORT_ID_MOUSE ;
 TYPE_4__* driver ;
 int stub1 (TYPE_1__*) ;

void host_mouse_send(report_mouse_t *report) {
    if (!driver) return;



    (*driver->send_mouse)(report);
}
