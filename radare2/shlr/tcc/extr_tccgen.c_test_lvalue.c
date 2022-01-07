
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r; } ;


 int VT_LVAL ;
 int expect (char*) ;
 TYPE_1__* vtop ;

void test_lvalue(void) {
 if (!(vtop->r & VT_LVAL)) {
  expect ("lvalue");
 }
}
