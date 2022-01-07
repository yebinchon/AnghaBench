
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; int a; } ;
typedef TYPE_1__ RAsmState ;


 int R_SYS_ARCH ;
 int R_SYS_BITS ;
 int R_SYS_BITS_64 ;
 int r_anal_set_bits (int ,int) ;
 int r_anal_use (int ,int ) ;
 int r_asm_set_bits (int ,int) ;
 int r_asm_use (int ,int ) ;

__attribute__((used)) static void __as_set_archbits(RAsmState *as) {
 r_asm_use (as->a, R_SYS_ARCH);
 r_anal_use (as->anal, R_SYS_ARCH);

 int sysbits = (R_SYS_BITS & R_SYS_BITS_64)? 64: 32;
 r_asm_set_bits (as->a, sysbits);
 r_anal_set_bits (as->anal, sysbits);
}
