
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_12__ {int mask; } ;
struct TYPE_11__ {int cpu; } ;
struct TYPE_10__ {int size; scalar_t__ ptr; scalar_t__ jump; } ;
typedef TYPE_1__ RAnalOp ;
typedef TYPE_2__ RAnal ;
typedef TYPE_3__ OPCODE_DESC ;
typedef int CPU_MODEL ;


 scalar_t__ UT64_MAX ;
 TYPE_3__* avr_op_analyze (TYPE_2__*,TYPE_1__*,scalar_t__,int const*,int,int *) ;
 int * get_cpu_model (int ) ;
 int* malloc (int) ;
 int memset (int*,int,int) ;
 int r_anal_op_free (TYPE_1__*) ;
 TYPE_1__* r_anal_op_new () ;

__attribute__((used)) static ut8 *anal_mask_avr(RAnal *anal, int size, const ut8 *data, ut64 at) {
 RAnalOp *op = ((void*)0);
 ut8 *ret = ((void*)0);
 int idx;

 if (!(op = r_anal_op_new ())) {
  return ((void*)0);
 }

 if (!(ret = malloc (size))) {
  r_anal_op_free (op);
  return ((void*)0);
 }

 memset (ret, 0xff, size);

 CPU_MODEL *cpu = get_cpu_model (anal->cpu);

 for (idx = 0; idx + 1 < size; idx += op->size) {
  OPCODE_DESC* opcode_desc = avr_op_analyze (anal, op, at + idx, data + idx, size - idx, cpu);

  if (op->size < 1) {
   break;
  }

  if (!opcode_desc) {
   continue;
  }



  if (op->size == 4) {
   ret[idx + 2] = 0;
   ret[idx + 3] = 0;
  }

  if (op->ptr != UT64_MAX || op->jump != UT64_MAX) {
   ret[idx] = opcode_desc->mask;
   ret[idx + 1] = opcode_desc->mask >> 8;
  }
 }

 r_anal_op_free (op);

 return ret;
}
