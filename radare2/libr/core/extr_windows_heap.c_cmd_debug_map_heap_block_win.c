
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_9__ {struct TYPE_9__* extraInfo; scalar_t__ unusedBytes; scalar_t__ dwSize; int dwFlags; scalar_t__ granularity; } ;
struct TYPE_8__ {int dbg; int num; } ;
typedef int RTable ;
typedef TYPE_1__ RCore ;
typedef int PJ ;
typedef TYPE_2__* PHeapBlock ;


 TYPE_2__* GetSingleBlock (int ,scalar_t__) ;
 int * __new_heapblock_tbl () ;
 int free (TYPE_2__*) ;
 char* get_type (int ) ;
 int help_msg_block ;
 int pj_end (int *) ;
 int pj_free (int *) ;
 int pj_kN (int *,char*,scalar_t__) ;
 int pj_ks (int *,char*,char*) ;
 int * pj_new () ;
 int pj_o (int *) ;
 int pj_string (int *) ;
 int r_cons_println (int ) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 scalar_t__ r_num_math (int ,char*) ;
 int r_table_add_rowf (int *,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,char*) ;
 int r_table_free (int *) ;
 int r_table_tostring (int *) ;
 char* strchr (char const*,char) ;
 int w32_list_heaps_blocks (TYPE_1__*,char const) ;

__attribute__((used)) static void cmd_debug_map_heap_block_win(RCore *core, const char *input) {
 char *space = strchr (input, ' ');
 ut64 off = 0;
 PHeapBlock hb = ((void*)0);
 if (space) {
  off = r_num_math (core->num, space + 1);
  PHeapBlock hb = GetSingleBlock (core->dbg, off);
  if (hb) {
   ut64 granularity = hb->extraInfo->granularity;
   char *type = get_type (hb->dwFlags);
   if (!type) {
    type = "";
   }
   PJ *pj = pj_new ();
   RTable *tbl = __new_heapblock_tbl ();
   ut64 headerAddr = off - granularity;
   switch (input[0]) {
   case ' ':
    r_table_add_rowf (tbl, "xxnnns", headerAddr, off, (ut64)hb->dwSize, granularity, (ut64)hb->extraInfo->unusedBytes, type);
    r_cons_println (r_table_tostring (tbl));
    break;
   case 'j':
    pj_o (pj);
    pj_kN (pj, "header_address", headerAddr);
    pj_kN (pj, "user_address", off);
    pj_ks (pj, "type", type);
    pj_kN (pj, "size", hb->dwSize);
    if (hb->extraInfo->unusedBytes) {
     pj_kN (pj, "unused", hb->extraInfo->unusedBytes);
    }
    pj_end (pj);
    r_cons_println (pj_string (pj));
   }
   free (hb->extraInfo);
   free (hb);
   r_table_free (tbl);
   pj_free (pj);
  }
  return;
 }
 switch (input[0]) {
 case '\0':
 case 'f':
 case 'j':
  w32_list_heaps_blocks (core, input[0]);
  break;
 default:
  r_core_cmd_help (core, help_msg_block);
 }
}
