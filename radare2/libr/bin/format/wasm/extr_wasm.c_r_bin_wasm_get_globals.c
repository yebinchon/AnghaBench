
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * g_globals; int g_sections; } ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef TYPE_1__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_GLOBAL ;
 int * r_bin_wasm_get_global_entries (TYPE_1__*,int *) ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

RList *r_bin_wasm_get_globals (RBinWasmObj *bin) {
 RBinWasmSection *global = ((void*)0);
 RList *globals = ((void*)0);

 if (!bin || !bin->g_sections) {
  return ((void*)0);
 }
 if (bin->g_globals) {
  return bin->g_globals;
 }
 if (!(globals = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_GLOBAL))) {
  return r_list_new ();
 }

 if (!(global = (RBinWasmSection *)r_list_first (globals))) {
  r_list_free (globals);
  return r_list_new ();
 }
 bin->g_globals = r_bin_wasm_get_global_entries (bin, global);
 r_list_free (globals);
 return bin->g_globals;
}
