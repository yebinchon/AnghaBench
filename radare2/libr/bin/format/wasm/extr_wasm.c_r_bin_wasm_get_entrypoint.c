
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_10__ {int code; } ;
struct TYPE_9__ {int g_codes; TYPE_1__* g_start; int g_sections; scalar_t__ entrypoint; } ;
struct TYPE_8__ {int index; } ;
typedef int RList ;
typedef TYPE_1__ RBinWasmStartEntry ;
typedef int RBinWasmSection ;
typedef TYPE_2__ RBinWasmObj ;
typedef TYPE_3__ RBinWasmCodeEntry ;


 int R_BIN_WASM_SECTION_START ;
 int * r_bin_wasm_get_sections_by_id (int ,int ) ;
 TYPE_1__* r_bin_wasm_get_start (TYPE_2__*,int *) ;
 scalar_t__ r_list_first (int *) ;
 int r_list_free (int *) ;
 TYPE_3__* r_list_get_n (int ,int ) ;

ut32 r_bin_wasm_get_entrypoint (RBinWasmObj *bin) {
 RList *secs = ((void*)0);
 RBinWasmStartEntry *start = ((void*)0);
 RBinWasmSection *sec = ((void*)0);
 RBinWasmCodeEntry *func = ((void*)0);

 if (!bin || !bin->g_sections) {
  return 0;
 }
 if (bin->entrypoint) {
  return bin->entrypoint;
 }
 if (bin->g_start) {
  start = bin->g_start;
 } else if (!(secs = r_bin_wasm_get_sections_by_id (bin->g_sections, R_BIN_WASM_SECTION_START))) {
  return 0;
 } else if (!(sec = (RBinWasmSection *)r_list_first (secs))) {
  r_list_free (secs);
  return 0;
 } else {
  start = r_bin_wasm_get_start (bin, sec);
  bin->g_start = start;
 }
 if (!start) {
  r_list_free (secs);
  return 0;
 }

 if (!bin->g_codes) {
  r_list_free (secs);
  return 0;
 }
 func = r_list_get_n (bin->g_codes, start->index);
 r_list_free (secs);
 return (ut32) (func ? func->code : 0);
}
