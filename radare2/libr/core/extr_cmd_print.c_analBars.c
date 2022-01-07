
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_19__ {int bbs; } ;
struct TYPE_18__ {int size; } ;
struct TYPE_17__ {int anal; } ;
struct TYPE_16__ {TYPE_1__* block; } ;
struct TYPE_15__ {scalar_t__ blocks; scalar_t__ strings; scalar_t__ flags; scalar_t__ symbols; scalar_t__ comments; scalar_t__ in_functions; scalar_t__ functions; } ;
typedef TYPE_2__ RCoreAnalStats ;
typedef TYPE_3__ RCore ;
typedef TYPE_4__ RAnalOp ;
typedef TYPE_5__ RAnalFunction ;


 int R_ANAL_OP_MASK_BASIC ;
 int R_FREE (int *) ;
 int R_MIN (int,int) ;
 int * calloc (int,int) ;
 scalar_t__ checkAnalType (TYPE_4__*,int) ;
 int eprintf (char*) ;
 int free (int *) ;
 int * malloc (int) ;
 int matchBar (int *,int) ;
 TYPE_5__* r_anal_get_fcn_in (int ,scalar_t__,int ) ;
 int r_anal_op_free (TYPE_4__*) ;
 scalar_t__ r_cons_is_breaked () ;
 TYPE_2__* r_core_anal_get_stats (TYPE_3__*,scalar_t__,scalar_t__,int) ;
 TYPE_4__* r_core_anal_op (TYPE_3__*,scalar_t__,int ) ;
 int r_core_anal_stats_free (TYPE_2__*) ;
 int r_list_length (int ) ;

__attribute__((used)) static ut8 *analBars(RCore *core, int type, int nblocks, int blocksize, int skipblocks, ut64 from) {
 int j, i = 0;
 ut8 *ptr = calloc (1, nblocks);
 if (!ptr) {
  eprintf ("Error: failed to malloc memory");
  return ((void*)0);
 }

 ut8 *p = malloc (blocksize);
 if (!p) {
  R_FREE (ptr);
  eprintf ("Error: failed to malloc memory");
  return ((void*)0);
 }
 if (type == 'A') {
  ut64 to = from + (blocksize * nblocks);
  RCoreAnalStats *as = r_core_anal_get_stats (core, from, to, blocksize);
  for (i = 0; i < nblocks; i++) {
   int value = 0;
   value += as->block[i].functions;
   value += as->block[i].in_functions;
   value += as->block[i].comments;
   value += as->block[i].symbols;
   value += as->block[i].flags;
   value += as->block[i].strings;
   value += as->block[i].blocks;
   ptr[i] = R_MIN (255, value);
  }
  r_core_anal_stats_free (as);
  free (p);
  return ptr;
 }
 for (i = 0; i < nblocks; i++) {
  if (r_cons_is_breaked ()) {
   break;
  }
  ut64 off = from + (i + skipblocks) * blocksize;
  for (j = 0; j < blocksize ; j++) {
   if (type == 'a') {
    RAnalFunction *fcn = r_anal_get_fcn_in (core->anal, off + j, 0);
    if (fcn) {
     ptr[i] = r_list_length (fcn->bbs);
    }
    continue;
   }
   RAnalOp *op = r_core_anal_op (core, off + j, R_ANAL_OP_MASK_BASIC);
   if (op) {
    if (op->size < 1) {

     if (type == 'i') {
      matchBar (ptr, i);
     }
    } else {
     if (checkAnalType (op, type)) {
      matchBar (ptr, i);
     }
    }
    if (op->size > 0) {
     j += op->size - 1;
    }
    r_anal_op_free (op);
   } else {
    if (type == 'i') {
     matchBar (ptr, i);
    }
   }
  }
 }
 free (p);
 return ptr;
}
