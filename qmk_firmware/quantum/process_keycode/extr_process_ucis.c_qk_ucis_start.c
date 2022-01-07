
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_progress; scalar_t__ count; } ;


 int qk_ucis_start_user () ;
 TYPE_1__ qk_ucis_state ;

void qk_ucis_start(void) {
    qk_ucis_state.count = 0;
    qk_ucis_state.in_progress = 1;

    qk_ucis_start_user();
}
