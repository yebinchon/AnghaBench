
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cur_swap; } ;
typedef TYPE_1__ gs_device_t ;


 int UNUSED_PARAMETER (TYPE_1__*) ;
 int glFlush () ;

void device_flush(gs_device_t *device)
{




 glFlush();


 UNUSED_PARAMETER(device);
}
