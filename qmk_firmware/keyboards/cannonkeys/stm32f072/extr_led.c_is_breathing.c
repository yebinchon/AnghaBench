
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * config; } ;


 TYPE_1__ PWMD3 ;
 int pwmCFG_breathing ;

bool is_breathing(void) {
    return PWMD3.config == &pwmCFG_breathing;
}
