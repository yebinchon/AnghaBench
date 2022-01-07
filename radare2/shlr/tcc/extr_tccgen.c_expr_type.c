
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
typedef int CType ;


 int gexpr () ;
 int nocode_wanted ;
 TYPE_1__* vtop ;

__attribute__((used)) static void expr_type(CType *type) {
 int saved_nocode_wanted;

 saved_nocode_wanted = nocode_wanted;
 nocode_wanted = 1;
 gexpr ();
 *type = vtop->type;
 nocode_wanted = saved_nocode_wanted;
}
