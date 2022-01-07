
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PYB_RESET_SOFT ;
 int reset_cause ;

void machine_deinit(void) {

    reset_cause = PYB_RESET_SOFT;
}
