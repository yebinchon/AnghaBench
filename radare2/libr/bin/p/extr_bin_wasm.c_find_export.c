
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_3__ {scalar_t__ kind; scalar_t__ const index; } ;
typedef TYPE_1__ RBinWasmExportEntry ;


 scalar_t__ R_BIN_WASM_EXTERNALKIND_Function ;

__attribute__((used)) static bool find_export (const ut32 *p, const RBinWasmExportEntry *q) {
 if (q->kind != R_BIN_WASM_EXTERNALKIND_Function) {
  return 1;
 }
 return q->index != (*p);
}
