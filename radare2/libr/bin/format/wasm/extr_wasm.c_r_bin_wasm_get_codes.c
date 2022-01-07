
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * g_codes; int g_sections; } ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef TYPE_1__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_CODE ;
 int * r_bin_wasm_get_code_entries (TYPE_1__*,int *) ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

RList *r_bin_wasm_get_codes (RBinWasmObj *bin) {
 RBinWasmSection *code = ((void*)0);
 ;
 RList *codes = ((void*)0);

 if (!bin || !bin->g_sections) {
  return ((void*)0);
 }
 if (bin->g_codes) {
  return bin->g_codes;
 }
 if (!(codes = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_CODE))) {
  return r_list_new ();
 }

 if (!(code = (RBinWasmSection *)r_list_first (codes))) {
  r_list_free (codes);
  return r_list_new ();
 }
 bin->g_codes = r_bin_wasm_get_code_entries (bin, code);
 r_list_free (codes);
 return bin->g_codes;
}
