
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
typedef scalar_t__ ut16 ;
struct TYPE_12__ {int esil; TYPE_1__* cur; } ;
struct TYPE_9__ {scalar_t__ idx; } ;
struct TYPE_11__ {TYPE_2__ last; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_3__ RAnalEsilOp ;
typedef TYPE_4__ RAnalEsilBB ;
typedef TYPE_5__ EsilCfgGen ;


 scalar_t__ R_ANAL_ESIL_OP_TYPE_CONTROL_FLOW ;
 int _handle_control_flow_ifelsefi (TYPE_5__*,char*,scalar_t__) ;
 TYPE_3__* esil_get_op (int ,char*) ;

bool _round_0_cb (void *user, void *data, ut32 id) {
 EsilCfgGen *gen = (EsilCfgGen *)user;
 char *atom = (char *)data;
 RAnalEsilBB *bb = (RAnalEsilBB *)gen->cur->data;
 RAnalEsilOp *op = esil_get_op (gen->esil, atom);
 bb->last.idx = (ut16)id;
 if (op && op->type == R_ANAL_ESIL_OP_TYPE_CONTROL_FLOW) {
  _handle_control_flow_ifelsefi (gen, atom, id);
 }
 return 1;
}
