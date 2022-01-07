
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_13__ {int bits; int reg; } ;
struct TYPE_12__ {int esil; } ;
struct TYPE_11__ {TYPE_4__* anal; } ;
struct TYPE_10__ {int size; } ;
typedef TYPE_1__ RRegItem ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RAnalOp ;
typedef TYPE_4__ RAnal ;


 int R_ANAL_OP_MASK_ESIL ;
 int R_ANAL_OP_MASK_VAL ;
 int free (char*) ;
 int memset (char*,int ,int) ;
 int r_anal_op_free (TYPE_3__*) ;
 TYPE_3__* r_core_anal_op (TYPE_2__*,int ,int) ;
 char* r_reg_32_to_64 (int ,char*) ;
 TYPE_1__* r_reg_get (int ,char*,int) ;
 char const* r_strbuf_get (int *) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void get_src_regname(RCore *core, ut64 addr, char *regname, int size) {
 RAnal *anal = core->anal;
 RAnalOp *op = r_core_anal_op (core, addr, R_ANAL_OP_MASK_VAL | R_ANAL_OP_MASK_ESIL);
 if (!op) {
  return;
 }
 char *op_esil = strdup (r_strbuf_get (&op->esil));
 char *tmp = strchr (op_esil, ',');
 if (tmp) {
  *tmp = '\0';
 }
 memset (regname, 0, size);
 RRegItem *ri = r_reg_get (anal->reg, op_esil, -1);
 if (ri) {
  if ((anal->bits == 64) && (ri->size == 32)) {
   const char *reg = r_reg_32_to_64 (anal->reg, op_esil);
   if (reg) {
    free (op_esil);
    op_esil = strdup (reg);
   }
  }
  strncpy (regname, op_esil, size - 1);
 }
 free (op_esil);
 r_anal_op_free (op);
}
