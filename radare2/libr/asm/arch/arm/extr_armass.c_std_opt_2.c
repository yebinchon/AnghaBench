
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * a; } ;
typedef TYPE_1__ ArmOpcode ;



__attribute__((used)) static void std_opt_2(ArmOpcode *ao) {
 ao->a[2] = ao->a[1];
 ao->a[1] = ao->a[0];
}
