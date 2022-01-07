
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * g_exports; int g_sections; } ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef TYPE_1__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_EXPORT ;
 int * r_bin_wasm_get_export_entries (TYPE_1__*,int *) ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

RList *r_bin_wasm_get_exports (RBinWasmObj *bin) {
 RBinWasmSection *export = ((void*)0);
 RList *exports = ((void*)0);

 if (!bin || !bin->g_sections) {
  return ((void*)0);
 }
 if (bin->g_exports) {
  return bin->g_exports;
 }
 if (!(exports = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_EXPORT))) {
  return r_list_new ();
 }

 if (!(export = (RBinWasmSection *)r_list_first (exports))) {
  r_list_free (exports);
  return r_list_new ();
 }
 bin->g_exports = r_bin_wasm_get_export_entries (bin, export);
 r_list_free (exports);
 return bin->g_exports;
}
