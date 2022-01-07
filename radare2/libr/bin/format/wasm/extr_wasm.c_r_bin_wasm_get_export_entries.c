
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RListFree ;
typedef int RList ;
typedef int RBinWasmSection ;
typedef int RBinWasmObj ;


 scalar_t__ free ;
 int * get_entries_from_section (int *,int *,int ,int ) ;
 int parse_export_entry ;

__attribute__((used)) static RList *r_bin_wasm_get_export_entries (RBinWasmObj *bin, RBinWasmSection *sec) {
 return get_entries_from_section (bin, sec, parse_export_entry, (RListFree)free);
}
