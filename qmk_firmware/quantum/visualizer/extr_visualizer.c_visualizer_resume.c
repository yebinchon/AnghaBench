
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int suspended; } ;


 TYPE_1__ current_status ;
 int update_status (int) ;

void visualizer_resume(void) {
    current_status.suspended = 0;
    update_status(1);
}
