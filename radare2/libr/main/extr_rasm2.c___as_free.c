
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int l; int anal; int a; } ;
typedef TYPE_1__ RAsmState ;


 int free (TYPE_1__*) ;
 int r_anal_free (int ) ;
 int r_asm_free (int ) ;
 int r_lib_free (int ) ;

__attribute__((used)) static void __as_free(RAsmState *as) {
 r_asm_free (as->a);
 r_anal_free (as->anal);
 r_lib_free (as->l);
     free (as);
}
