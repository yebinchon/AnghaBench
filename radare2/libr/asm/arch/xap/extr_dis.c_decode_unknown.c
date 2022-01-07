
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {int dummy; } ;
struct directive {int d_inst; int d_asm; } ;
struct TYPE_2__ {int in_opcode; int in_reg; int in_mode; int in_operand; } ;


 int i2u16 (int *) ;
 TYPE_1__* in ;
 int printf (char*,int,int,int,int) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void decode_unknown(struct state *s, struct directive *d) {




 sprintf (d->d_asm, "DC 0x%4x", i2u16(&d->d_inst));
}
