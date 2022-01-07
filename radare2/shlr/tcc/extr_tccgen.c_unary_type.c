
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
typedef int CType ;


 int nocode_wanted ;
 int unary () ;
 TYPE_1__* vtop ;

__attribute__((used)) static void unary_type(CType *type) {
 int a = nocode_wanted;
 nocode_wanted = 1;
 unary ();
 *type = vtop->type;
 nocode_wanted = a;
}
