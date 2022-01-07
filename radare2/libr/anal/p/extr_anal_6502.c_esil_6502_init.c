
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {scalar_t__ reg; } ;
typedef TYPE_2__ RAnalEsil ;


 int r_reg_get (scalar_t__,char*,int) ;
 int r_reg_set_value (scalar_t__,int ,int) ;

__attribute__((used)) static int esil_6502_init (RAnalEsil *esil) {
 if (esil->anal && esil->anal->reg) {
  r_reg_set_value (esil->anal->reg, r_reg_get (esil->anal->reg, "pc", -1), 0x0000);
  r_reg_set_value (esil->anal->reg, r_reg_get (esil->anal->reg, "sp", -1), 0xff);
  r_reg_set_value (esil->anal->reg, r_reg_get (esil->anal->reg, "a", -1), 0x00);
  r_reg_set_value (esil->anal->reg, r_reg_get (esil->anal->reg, "x", -1), 0x00);
  r_reg_set_value (esil->anal->reg, r_reg_get (esil->anal->reg, "y", -1), 0x00);
  r_reg_set_value (esil->anal->reg, r_reg_get (esil->anal->reg, "flags", -1), 0x00);
 }
 return 1;
}
