
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut64 ;
typedef int uint8_t ;
struct TYPE_7__ {int read; int length; int addr; } ;
struct TYPE_8__ {TYPE_1__ r_mem; int data; scalar_t__ ret; int cpu; int req; int member_0; } ;
typedef TYPE_2__ kd_req_t ;
typedef int kd_packet_t ;
struct TYPE_9__ {int seq_id; int io_ptr; int cpu; int syncd; } ;
typedef TYPE_3__ WindCtx ;


 int DbgKdReadPhysicalMemoryApi ;
 int KD_E_OK ;
 int KD_MAX_PAYLOAD ;
 int KD_PACKET_TYPE_ACKNOWLEDGE ;
 int KD_PACKET_TYPE_STATE_MANIPULATE ;
 TYPE_2__* PKT_REQ (int *) ;
 int R_MIN (int const,int ) ;
 int free (int *) ;
 int kd_send_data_packet (int ,int ,int,int *,int,int *,int ) ;
 int memcpy (int *,int ,int) ;
 int windbg_wait_packet (TYPE_3__*,int ,int **) ;

int windbg_read_at_phys(WindCtx *ctx, uint8_t *buf, const ut64 offset, const int count) {
 kd_req_t req = {
  0
 }, *rr;
 kd_packet_t *pkt;
 int ret;

 if (!ctx || !ctx->io_ptr || !ctx->syncd) {
  return 0;
 }
 req.req = DbgKdReadPhysicalMemoryApi;
 req.cpu = ctx->cpu;
 req.r_mem.addr = offset;
 req.r_mem.length = R_MIN (count, KD_MAX_PAYLOAD);
 req.r_mem.read = 0;

 ret = kd_send_data_packet (ctx->io_ptr, KD_PACKET_TYPE_STATE_MANIPULATE, (ctx->seq_id ^= 1),
  (uint8_t *) &req, sizeof(kd_req_t), ((void*)0), 0);
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

 rr = PKT_REQ (pkt);

 if (rr->ret) {
  free (pkt);
  return 0;
 }

 memcpy (buf, rr->data, rr->r_mem.read);
 ret = rr->r_mem.read;
 free (pkt);
 return ret;
}
