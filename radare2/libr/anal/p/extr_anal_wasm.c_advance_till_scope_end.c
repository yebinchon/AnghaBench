
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef void* ut64 ;
typedef scalar_t__ ut32 ;
typedef int buffer ;
typedef scalar_t__ WasmOpCodes ;
struct TYPE_12__ {scalar_t__ core; } ;
struct TYPE_10__ {int member_0; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ op; int txt; TYPE_1__ member_0; } ;
typedef TYPE_4__ WasmOp ;
struct TYPE_11__ {int io; scalar_t__ (* read_at ) (int ,void*,int *,int) ;} ;
struct TYPE_15__ {TYPE_2__ iob; } ;
struct TYPE_14__ {void* jump; scalar_t__ type; } ;
typedef TYPE_5__ RAnalOp ;
typedef TYPE_6__ RAnal ;


 scalar_t__ WASM_OP_BLOCK ;
 scalar_t__ WASM_OP_ELSE ;
 scalar_t__ WASM_OP_END ;
 scalar_t__ WASM_OP_IF ;
 scalar_t__ WASM_OP_LOOP ;
 scalar_t__ WASM_OP_TRAP ;
 scalar_t__ WASM_TYPE_OP_CORE ;
 scalar_t__ stub1 (int ,void*,int *,int) ;
 int wasm_dis (TYPE_4__*,int *,int) ;

__attribute__((used)) static bool advance_till_scope_end(RAnal* anal, RAnalOp *op, ut64 address, ut32 expected_type, ut32 depth, bool use_else) {
 ut8 buffer[16];
 ut8 *ptr = buffer;
 ut8 *end = ptr + sizeof (buffer);
 WasmOp wop = {{0}};
 int size = 0;
 while (anal->iob.read_at (anal->iob.io, address, buffer, sizeof (buffer))) {
  size = wasm_dis (&wop, ptr, end - ptr);
  if (!wop.txt || (wop.type == WASM_TYPE_OP_CORE && wop.op.core == WASM_OP_TRAP)) {

   break;
  }
  if (wop.type == WASM_TYPE_OP_CORE) {
   WasmOpCodes wopop = wop.op.core;
   if (wopop == WASM_OP_LOOP || wopop == WASM_OP_BLOCK || wopop == WASM_OP_IF) {
    depth++;
   }
   if (use_else && wopop == WASM_OP_ELSE && !depth) {
    op->type = expected_type;
    op->jump = address + 1;
    return 1;
   } else if (wopop == WASM_OP_END && depth > 0) {

    depth--;
   } else if (wopop == WASM_OP_END && !depth) {
    op->type = expected_type;
    op->jump = address;
    return 1;
   }
  }
  address += size;
 }
 return 0;
}
