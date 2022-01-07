
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RDebug ;


 int R_REG_TYPE_ALL ;
 int eprintf (char*) ;
 int free (int *) ;
 int * r_reg_get_bytes (int ,int ,int*) ;
 int wctx ;
 int windbg_write_reg (int ,int *,int) ;

__attribute__((used)) static int r_debug_windbg_reg_write(RDebug *dbg, int type, const ut8 *buf, int size) {
 if (!dbg->reg) {
  return 0;
 }
 int arena_size;
 ut8 *arena = r_reg_get_bytes (dbg->reg, R_REG_TYPE_ALL, &arena_size);
 if (!arena) {
  eprintf ("Could not retrieve the register arena!\n");
  return 0;
 }
 int ret = windbg_write_reg (wctx, arena, arena_size);
 free (arena);
 return ret;
}
