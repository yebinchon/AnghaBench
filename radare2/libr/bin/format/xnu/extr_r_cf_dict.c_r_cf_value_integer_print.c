
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ RCFValueInteger ;


 int printf (char*,int ) ;

__attribute__((used)) static void r_cf_value_integer_print(RCFValueInteger *integer) {
 printf ("%llu", integer->value);
}
