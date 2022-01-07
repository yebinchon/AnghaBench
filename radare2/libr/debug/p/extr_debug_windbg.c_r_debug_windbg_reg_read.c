
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RDebug ;


 int r_reg_read_regs (int ,int *,int) ;
 int wctx ;
 int windbg_read_reg (int ,int *,int) ;

__attribute__((used)) static int r_debug_windbg_reg_read(RDebug *dbg, int type, ut8 *buf, int size) {
 int ret = windbg_read_reg(wctx, buf, size);
 if (!ret || size != ret) {
  return -1;
 }
 r_reg_read_regs (dbg->reg, buf, ret);

 return 0;
}
