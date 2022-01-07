
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * g_tables; int g_sections; } ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef TYPE_1__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_TABLE ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 int * r_bin_wasm_get_table_entries (TYPE_1__*,int *) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

RList *r_bin_wasm_get_tables (RBinWasmObj *bin) {
 RBinWasmSection *table = ((void*)0);
 RList *tables = ((void*)0);

 if (!bin || !bin->g_sections) {
  return ((void*)0);
 }
 if (bin->g_tables) {
  return bin->g_tables;
 }
 if (!(tables = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_TABLE))) {
  return r_list_new ();
 }

 if (!(table = (RBinWasmSection *)r_list_first (tables))) {
  r_list_free (tables);
  return r_list_new ();
 }
 bin->g_tables = r_bin_wasm_get_table_entries (bin, table);
 r_list_free (tables);
 return bin->g_tables;
}
