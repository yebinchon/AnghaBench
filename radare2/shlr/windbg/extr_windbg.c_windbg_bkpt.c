
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut64 ;
typedef int uint8_t ;
struct TYPE_9__ {int handle; int addr; } ;
struct TYPE_8__ {int handle; } ;
struct TYPE_10__ {int ret; TYPE_2__ r_set_bp; TYPE_1__ r_del_bp; int cpu; int req; int member_0; } ;
typedef TYPE_3__ kd_req_t ;
typedef int kd_packet_t ;
struct TYPE_11__ {int seq_id; int io_ptr; int cpu; int syncd; } ;
typedef TYPE_4__ WindCtx ;


 int DbgKdRestoreBreakPointApi ;
 int DbgKdWriteBreakPointApi ;
 int KD_E_OK ;
 int KD_PACKET_TYPE_ACKNOWLEDGE ;
 int KD_PACKET_TYPE_STATE_MANIPULATE ;
 TYPE_3__* PKT_REQ (int *) ;
 int free (int *) ;
 int kd_send_data_packet (int ,int ,int,int *,int,int *,int ) ;
 int windbg_wait_packet (TYPE_4__*,int ,int **) ;

int windbg_bkpt(WindCtx *ctx, const ut64 addr, const int set, const int hw, int *handle) {
 kd_req_t req = {
  0
 };
 kd_packet_t *pkt;
 int ret;

 if (!ctx || !ctx->io_ptr || !ctx->syncd) {
  return 0;
 }

 req.req = set? DbgKdWriteBreakPointApi: DbgKdRestoreBreakPointApi;
 req.cpu = ctx->cpu;

 if (set) {
  req.r_set_bp.addr = addr;
 } else {
  req.r_del_bp.handle = *handle;
 }

 ret = kd_send_data_packet (ctx->io_ptr, KD_PACKET_TYPE_STATE_MANIPULATE, (ctx->seq_id ^= 1), (uint8_t *) &req,
  sizeof(kd_req_t), ((void*)0), 0);
 if (ret != KD_E_OK) {
  return 0;
 }

 ret = windbg_wait_packet (ctx, KD_PACKET_TYPE_ACKNOWLEDGE, ((void*)0));
 if (ret != KD_E_OK) {
  return 0;
 }

 ret = windbg_wait_packet (ctx, KD_PACKET_TYPE_STATE_MANIPULATE, &pkt);
 if (ret != KD_E_OK) {
  return 0;
 }

 kd_req_t *rr = PKT_REQ (pkt);

 if (rr->ret) {
  free (pkt);
  return 0;
 }
 *handle = rr->r_set_bp.handle;
 ret = !!rr->ret;
 free (pkt);
 return ret;
}
