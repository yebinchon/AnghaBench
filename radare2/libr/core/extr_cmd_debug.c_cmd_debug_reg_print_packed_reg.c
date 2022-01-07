
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef float ut64 ;
struct TYPE_9__ {TYPE_1__* dbg; } ;
struct TYPE_8__ {int packed_size; } ;
struct TYPE_7__ {int reg; } ;
typedef TYPE_2__ RRegItem ;
typedef TYPE_3__ RCore ;


 int NUM_INT_PACK_TYPES ;
 int NUM_PACK_TYPES ;
 int memcpy (void*,void*,int) ;
 int pack_print (int,float,int) ;
 int* pack_sizes ;
 int r_cons_newline () ;
 float r_reg_get_pack (int ,TYPE_2__*,int,int) ;

__attribute__((used)) static void cmd_debug_reg_print_packed_reg(RCore *core, RRegItem *item, char explicit_size, char* pack_show) {
 int pi, i;
 for (pi = 0; pi < NUM_PACK_TYPES; pi++) {
  if (!explicit_size || pack_show[pi]) {
   for (i = 0; i < item->packed_size / pack_sizes[pi]; i++) {
    ut64 res = r_reg_get_pack(core->dbg->reg, item, i, pack_sizes[pi]);
    if( pi > NUM_INT_PACK_TYPES-1) {
     if (pack_sizes[pi] == 64) {
      double dres;
      memcpy ((void*)&dres, (void*)&res, 8);
      pack_print (i, dres, pi);
     } else if (pack_sizes[pi] == 32) {
      float fres;
      memcpy ((void*)&fres, (void*)&res, 4);
      pack_print (i, fres, pi);
     }
    } else {
     pack_print (i, res, pi);
    }
   }
   r_cons_newline ();
  }
 }
}
