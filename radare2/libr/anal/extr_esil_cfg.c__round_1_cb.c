
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_7__ {int esil; } ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ RAnalEsilOp ;
typedef TYPE_2__ EsilCfgGen ;


 scalar_t__ R_ANAL_ESIL_OP_TYPE_CONTROL_FLOW ;
 int _handle_break (TYPE_2__*,int ) ;
 int _handle_goto (TYPE_2__*,int ) ;
 TYPE_1__* esil_get_op (int ,char*) ;
 int strcmp (char*,char*) ;

bool _round_1_cb (void *user, void *data, ut32 id) {
 EsilCfgGen *gen = (EsilCfgGen *)user;
 char *atom = (char *)data;
 RAnalEsilOp *op = esil_get_op (gen->esil, atom);
 if (op && op->type == R_ANAL_ESIL_OP_TYPE_CONTROL_FLOW) {
  if (!strcmp ("BREAK", atom)) {
   _handle_break (gen, id);
  }
  if (!strcmp ("GOTO", atom)) {
   _handle_goto (gen, id);
  }
 }
 return 1;
}
