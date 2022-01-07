
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ RCFValueBool ;


 scalar_t__ R_CF_TRUE ;
 int printf (char*) ;

__attribute__((used)) static void r_cf_value_bool_print(RCFValueBool *bool_value) {
 if (bool_value->type == R_CF_TRUE) {
  printf ("true");
 } else {
  printf ("false");
 }
}
