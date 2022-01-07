
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * g_names; scalar_t__ g_sections; } ;
struct TYPE_6__ {int name; } ;
typedef int RList ;
typedef TYPE_1__ RBinWasmSection ;
typedef TYPE_2__ RBinWasmObj ;


 int R_BIN_WASM_SECTION_CUSTOM ;
 int * r_bin_wasm_get_custom_name_entries (TYPE_2__*,TYPE_1__*) ;
 int * r_bin_wasm_get_sections_by_id (scalar_t__,int ) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 int * r_list_new () ;
 int r_return_val_if_fail (int,int *) ;
 scalar_t__ strncmp (int ,char*,int) ;

RList *r_bin_wasm_get_custom_names (RBinWasmObj *bin) {
 RBinWasmSection *cust = ((void*)0);
 RList *customs = ((void*)0);

 r_return_val_if_fail (bin && bin->g_sections, ((void*)0));

 if (bin->g_names) {
  return bin->g_names;
 }
 if (!(customs = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_CUSTOM))) {
  return r_list_new ();
 }

 if (!(cust = (RBinWasmSection *)r_list_first (customs)) || strncmp (cust->name, "name", 5)) {
  r_list_free (customs);
  return r_list_new ();
 }
 bin->g_names = r_bin_wasm_get_custom_name_entries (bin, cust);
 r_list_free (customs);
 return bin->g_names;
}
