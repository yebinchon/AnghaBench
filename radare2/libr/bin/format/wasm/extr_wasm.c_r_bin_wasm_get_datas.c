
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * g_datas; int g_sections; } ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef TYPE_1__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_DATA ;
 int * r_bin_wasm_get_data_entries (TYPE_1__*,int *) ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

RList *r_bin_wasm_get_datas (RBinWasmObj *bin) {
 RBinWasmSection *data = ((void*)0);
 RList *datas = ((void*)0);

 if (!bin || !bin->g_sections) {
  return ((void*)0);
 }
 if (bin->g_datas) {
  return bin->g_datas;
 }
 if (!(datas = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_DATA))) {
  return r_list_new ();
 }

 if (!(data = (RBinWasmSection *)r_list_first (datas))) {
  r_list_free (datas);
  return r_list_new ();
 }
 bin->g_datas = r_bin_wasm_get_data_entries (bin, data);
 r_list_free (datas);
 return bin->g_datas;
}
