
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; int cpu; int kthread; int pc; } ;
typedef TYPE_2__ kd_stc_64 ;
struct TYPE_11__ {scalar_t__ data; } ;
typedef TYPE_3__ kd_packet_t ;
struct TYPE_9__ {scalar_t__ signum; void* type; int tid; int addr; } ;
struct TYPE_12__ {TYPE_1__ reason; } ;
typedef void* RDebugReasonType ;
typedef TYPE_4__ RDebug ;


 scalar_t__ DbgKdExceptionStateChange ;
 scalar_t__ DbgKdLoadSymbolsStateChange ;
 int KD_E_OK ;
 int KD_PACKET_TYPE_STATE_CHANGE64 ;
 void* R_DEBUG_REASON_ERROR ;
 void* R_DEBUG_REASON_INT ;
 void* R_DEBUG_REASON_NEW_LIB ;
 void* R_DEBUG_REASON_UNKNOWN ;
 int R_FREE (TYPE_3__*) ;
 int dbreak ;
 int free (TYPE_3__*) ;
 int wctx ;
 int windbg_break (int ) ;
 int windbg_set_cpu (int ,int ) ;
 int windbg_wait_packet (int ,int ,TYPE_3__**) ;

__attribute__((used)) static RDebugReasonType r_debug_windbg_wait(RDebug *dbg, int pid) {
 RDebugReasonType reason = R_DEBUG_REASON_UNKNOWN;
 kd_packet_t *pkt = ((void*)0);
 kd_stc_64 *stc;
 dbreak = 0;

 for (;;) {
  int ret = windbg_wait_packet (wctx, KD_PACKET_TYPE_STATE_CHANGE64, &pkt);
  if (dbreak) {
   dbreak = 0;
   windbg_break (wctx);
   R_FREE (pkt);
   continue;
  }
  if (ret != KD_E_OK || !pkt) {
   reason = R_DEBUG_REASON_ERROR;
   break;
  }
  stc = (kd_stc_64 *) pkt->data;
  dbg->reason.addr = stc->pc;
  dbg->reason.tid = stc->kthread;
  dbg->reason.signum = stc->state;
  windbg_set_cpu (wctx, stc->cpu);
  if (stc->state == DbgKdExceptionStateChange) {
   dbg->reason.type = R_DEBUG_REASON_INT;
   reason = R_DEBUG_REASON_INT;
   break;
  } else if (stc->state == DbgKdLoadSymbolsStateChange) {
   dbg->reason.type = R_DEBUG_REASON_NEW_LIB;
   reason = R_DEBUG_REASON_NEW_LIB;
   break;
  }
  R_FREE (pkt);
 }
 free (pkt);
 return reason;
}
