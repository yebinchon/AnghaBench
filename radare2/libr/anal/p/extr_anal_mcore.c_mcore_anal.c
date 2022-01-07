
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_11__ {int type; TYPE_1__* args; } ;
typedef TYPE_2__ mcore_t ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_3__ mcore_handle ;
struct TYPE_13__ {int type; int size; int eob; void* jump; void* fail; void* val; void* ptr; scalar_t__ delay; } ;
struct TYPE_10__ {scalar_t__ value; } ;
typedef int RAnalOpMask ;
typedef TYPE_4__ RAnalOp ;
typedef int RAnal ;







 int R_ANAL_OP_TYPE_NULL ;

 void* UT64_MAX ;
 int eprintf (char*) ;
 int mcore_free (TYPE_2__*) ;
 scalar_t__ mcore_init (TYPE_3__*,int const*,int) ;
 TYPE_2__* mcore_next (TYPE_3__*) ;

__attribute__((used)) static int mcore_anal(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 mcore_handle handle = {0};
 mcore_t* instr = ((void*)0);

 if (mcore_init (&handle, buf, len)) {
  eprintf ("[!] mcore: bad or invalid data.\n");
  return -1;
 }

 op->delay = 0;
 op->type = R_ANAL_OP_TYPE_NULL;
 op->jump = UT64_MAX;
 op->fail = UT64_MAX;
 op->ptr = op->val = UT64_MAX;
 op->size = 2;
 if ((instr = mcore_next (&handle))) {
  op->type = instr->type;
  switch (instr->type) {
  case 133:
  case 132:
   op->fail = addr + 2;
   op->jump = addr + instr->args[0].value + 1;
   break;
  case 129:
   op->jump = addr + instr->args[0].value + 1;
   break;
  case 131:



   break;
  case 128:
  case 130:
   op->eob = 1;
   break;
  default:
   break;
  }
  mcore_free (instr);
 }
 return op->size;
}
