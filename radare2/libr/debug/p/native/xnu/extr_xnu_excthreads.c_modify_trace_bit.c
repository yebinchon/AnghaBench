
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int gpr; } ;
typedef TYPE_5__ xnu_thread_t ;
struct TYPE_12__ {int __rflags; } ;
struct TYPE_10__ {int __eflags; } ;
struct TYPE_13__ {TYPE_3__ ts64; TYPE_1__ ts32; } ;
struct TYPE_11__ {scalar_t__ flavor; } ;
struct TYPE_15__ {TYPE_4__ uts; TYPE_2__ tsh; } ;
typedef TYPE_6__ R_REG_T ;
typedef int RDebug ;


 int eprintf (char*) ;
 scalar_t__ x86_THREAD_STATE32 ;
 scalar_t__ x86_THREAD_STATE64 ;
 int xnu_thread_get_gpr (int *,TYPE_5__*) ;
 int xnu_thread_set_gpr (int *,TYPE_5__*) ;

__attribute__((used)) static bool modify_trace_bit(RDebug *dbg, xnu_thread_t *th, int enable) {
 R_REG_T *state;
 int ret;
 ret = xnu_thread_get_gpr (dbg, th);
 if (!ret) {
  eprintf ("error to get gpr registers in trace bit intel\n");
  return 0;
 }
 state = (R_REG_T *)&th->gpr;
 if (state->tsh.flavor == x86_THREAD_STATE32) {
  state->uts.ts32.__eflags = (state->uts.ts32.__eflags & ~0x100UL) | (enable ? 0x100UL : 0);

 } else if (state->tsh.flavor == x86_THREAD_STATE64) {
  state->uts.ts64.__rflags = (state->uts.ts64.__rflags & ~0x100UL) | (enable ? 0x100UL : 0);

 } else {
  eprintf ("Invalid bit size\n");
  return 0;
 }
 if (!xnu_thread_set_gpr (dbg, th)) {
  eprintf ("error xnu_thread_set_gpr in modify_trace_bit intel\n");
  return 0;
 }
 return 1;
}
