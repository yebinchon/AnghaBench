
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * g_memories; int g_sections; } ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef TYPE_1__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_MEMORY ;
 int * r_bin_wasm_get_memory_entries (TYPE_1__*,int *) ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;

RList *r_bin_wasm_get_memories (RBinWasmObj *bin) {
 RBinWasmSection *memory;
 RList *memories;

 if (!bin || !bin->g_sections) {
  return ((void*)0);
 }

 if (bin->g_memories) {
  return bin->g_memories;
 }

 if (!(memories = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_MEMORY))) {
  return r_list_new ();
 }


 if (!(memory = (RBinWasmSection *)r_list_first (memories))) {
  r_list_free (memories);
  return r_list_new ();
 }

 bin->g_memories = r_bin_wasm_get_memory_entries (bin, memory);
 r_list_free (memories);
 return bin->g_memories;
}
