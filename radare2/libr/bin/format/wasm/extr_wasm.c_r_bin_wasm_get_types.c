
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * g_types; int g_sections; } ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef TYPE_1__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_TYPE ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 int * r_bin_wasm_get_type_entries (TYPE_1__*,int *) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

RList *r_bin_wasm_get_types (RBinWasmObj *bin) {
 RBinWasmSection *type = ((void*)0);
 RList *types = ((void*)0);

 if (!bin || !bin->g_sections) {
  return ((void*)0);
 }
 if (bin->g_types) {
  return bin->g_types;
 }
 if (!(types = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_TYPE))) {
  return r_list_new ();
 }

 if (!(type = (RBinWasmSection *)r_list_first (types))) {
  r_list_free (types);
  return r_list_new ();
 }
 bin->g_types = r_bin_wasm_get_type_entries (bin, type);
 r_list_free (types);
 return bin->g_types;
}
