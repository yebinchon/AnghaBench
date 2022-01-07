
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ h; scalar_t__ v; scalar_t__ y; scalar_t__ x; } ;


 int host_mouse_send (TYPE_1__*) ;
 TYPE_1__ mouseReport ;

__attribute__((weak)) void pointing_device_send(void) {

    host_mouse_send(&mouseReport);

    mouseReport.x = 0;
    mouseReport.y = 0;
    mouseReport.v = 0;
    mouseReport.h = 0;
}
