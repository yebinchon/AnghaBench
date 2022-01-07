
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * g_elements; int g_sections; } ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef TYPE_1__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_ELEMENT ;
 int * r_bin_wasm_get_element_entries (TYPE_1__*,int *) ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

RList *r_bin_wasm_get_elements (RBinWasmObj *bin) {
 RBinWasmSection *element = ((void*)0);
 RList *elements = ((void*)0);

 if (!bin || !bin->g_sections) {
  return ((void*)0);
 }
 if (bin->g_elements) {
  return bin->g_elements;
 }
 if (!(elements = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_ELEMENT))) {
  return r_list_new ();
 }

 if (!(element = (RBinWasmSection *)r_list_first (elements))) {
  r_list_free (elements);
  return r_list_new ();
 }
 bin->g_elements = r_bin_wasm_get_element_entries (bin, element);
 r_list_free (elements);
 return bin->g_elements;
}
