
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef int ctx ;
struct TYPE_10__ {int EFlags; } ;
struct TYPE_8__ {int signum; } ;
struct TYPE_9__ {TYPE_1__ reason; int tid; int pid; } ;
typedef TYPE_2__ RDebug ;
typedef TYPE_3__ CONTEXT ;


 int R_REG_TYPE_GPR ;
 int w32_continue (TYPE_2__*,int ,int ,int ) ;
 int w32_reg_read (TYPE_2__*,int ,int *,int) ;
 int w32_reg_write (TYPE_2__*,int ,int *,int) ;

int w32_step(RDebug *dbg) {

 CONTEXT ctx;
 if (!w32_reg_read (dbg, R_REG_TYPE_GPR, (ut8 *)&ctx, sizeof (ctx))) {
  return 0;
 }
 ctx.EFlags |= 0x100;
 if (!w32_reg_write (dbg, R_REG_TYPE_GPR, (ut8 *)&ctx, sizeof (ctx))) {
  return 0;
 }
 return w32_continue (dbg, dbg->pid, dbg->tid, dbg->reason.signum);

}
