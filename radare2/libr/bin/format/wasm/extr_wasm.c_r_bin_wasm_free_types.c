
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* param_types; } ;
typedef TYPE_1__ RBinWasmTypeEntry ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void r_bin_wasm_free_types (RBinWasmTypeEntry *ptr) {
 if (ptr) {
  free (ptr->param_types);
 }
 free (ptr);
}
