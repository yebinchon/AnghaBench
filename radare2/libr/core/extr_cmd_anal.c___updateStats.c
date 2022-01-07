
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int mnemonic; int type; int family; } ;
typedef int Sdb ;
typedef int RCore ;
typedef TYPE_1__ RAnalOp ;


 int R_ANAL_OP_MASK_BASIC ;
 int R_ANAL_OP_MASK_DISASM ;
 int R_ANAL_OP_MASK_HINT ;
 char* r_anal_op_family_to_string (int ) ;
 int r_anal_op_free (TYPE_1__*) ;
 char* r_anal_optype_to_string (int ) ;
 TYPE_1__* r_core_anal_op (int *,int ,int) ;
 int sdb_num_inc (int *,char const*,int,int ) ;
 char* strdup (int ) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void __updateStats(RCore *core, Sdb *db, ut64 addr, int statsMode) {
 RAnalOp *op = r_core_anal_op (core, addr, R_ANAL_OP_MASK_BASIC | R_ANAL_OP_MASK_HINT | R_ANAL_OP_MASK_DISASM);
 if (!op) {
  return;
 }
 if (statsMode == 'f') {
  const char *family = r_anal_op_family_to_string (op->family);
  sdb_num_inc (db, family, 1, 0);
 } else if (statsMode == 'o') {
  const char *type = r_anal_optype_to_string (op->type);
  sdb_num_inc (db, type, 1, 0);
 } else {
  char *mnem = strdup (op->mnemonic);
  char *sp = strstr (mnem, " ");
  if (sp) {
   *sp = 0;

  }
  sdb_num_inc (db, mnem, 1, 0);
 }


 r_anal_op_free (op);

}
