
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * g_imports; int g_sections; } ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef TYPE_1__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_IMPORT ;
 int * r_bin_wasm_get_import_entries (TYPE_1__*,int *) ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

RList *r_bin_wasm_get_imports (RBinWasmObj *bin) {
 RBinWasmSection *import = ((void*)0);
 RList *imports = ((void*)0);

 if (!bin || !bin->g_sections) {
  return ((void*)0);
 }
 if (bin->g_imports) {
  return bin->g_imports;
 }
 if (!(imports = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_IMPORT))) {
  return r_list_new ();
 }

 if (!(import = (RBinWasmSection *)r_list_first (imports))) {
  r_list_free (imports);
  return r_list_new ();
 }
 bin->g_imports = r_bin_wasm_get_import_entries (bin, import);
 r_list_free (imports);
 return bin->g_imports;
}
