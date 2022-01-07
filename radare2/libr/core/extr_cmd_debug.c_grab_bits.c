
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* anal; TYPE_1__* assembler; int config; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_8__ {int bits; int reg; } ;
struct TYPE_7__ {int bits; } ;
typedef TYPE_3__ RRegItem ;
typedef TYPE_4__ RCore ;


 int R_REG_NAME_PC ;
 int atoi (char const*) ;
 int r_config_get (int ,char*) ;
 TYPE_3__* r_reg_get (int ,char const*,int ) ;
 char* r_reg_get_name (int ,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int grab_bits(RCore *core, const char *arg, int *pcbits2) {
 int pcbits = atoi (arg);
 if (pcbits2) {
  *pcbits2 = 0;
 }
 if (pcbits < 1) {
  if (!strcmp (r_config_get (core->config, "asm.arch"), "avr")) {
   pcbits = 8;
   if (pcbits2) {
    *pcbits2 = 32;
   }
  } else {
   const char *pcname = r_reg_get_name (core->anal->reg, R_REG_NAME_PC);
   RRegItem *reg = r_reg_get (core->anal->reg, pcname, 0);
   if (reg) {
    if (core->assembler->bits != reg->size)
     pcbits = reg->size;
   }
  }
 }
 return pcbits ? pcbits : core->anal->bits;
}
