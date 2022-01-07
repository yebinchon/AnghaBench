
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* locals; } ;
typedef TYPE_1__ RBinWasmCodeEntry ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void r_bin_wasm_free_codes (RBinWasmCodeEntry *ptr) {
 if (ptr) {
  free (ptr->locals);
 }
 free (ptr);
}
