
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut64 ;
typedef int uint8_t ;
struct TYPE_8__ {int length; int read; int addr; } ;
struct TYPE_9__ {TYPE_1__ r_mem; scalar_t__ ret; int cpu; int req; } ;
typedef TYPE_2__ kd_req_t ;
typedef int kd_packet_t ;
struct TYPE_10__ {int seq_id; int io_ptr; int cpu; int syncd; } ;
typedef TYPE_3__ WindCtx ;


 int DbgKdWritePhysicalMemoryApi ;
 int KD_E_OK ;
 scalar_t__ KD_MAX_PAYLOAD ;
 int KD_PACKET_TYPE_ACKNOWLEDGE ;
 int KD_PACKET_TYPE_STATE_MANIPULATE ;
 TYPE_2__* PKT_REQ (int *) ;
 int R_MIN (int const,scalar_t__) ;
 int free (int *) ;
 int kd_send_data_packet (int ,int ,int,int *,int,int const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int windbg_wait_packet (TYPE_3__*,int ,int **) ;

int windbg_write_at_phys(WindCtx *ctx, const uint8_t *buf, const ut64 offset, const int count) {
 kd_packet_t *pkt;
 kd_req_t req;
 int ret;
 int payload;

 if (!ctx || !ctx->io_ptr || !ctx->syncd) {
  return 0;
 }

 payload = R_MIN (count, KD_MAX_PAYLOAD - sizeof(kd_req_t));

 memset (&req, 0, sizeof(kd_req_t));

 req.req = DbgKdWritePhysicalMemoryApi;
 req.cpu = ctx->cpu;

 req.r_mem.addr = offset;
 req.r_mem.length = payload;
 req.r_mem.read = 0;

 ret = kd_send_data_packet (ctx->io_ptr, KD_PACKET_TYPE_STATE_MANIPULATE,
  (ctx->seq_id ^= 1), (uint8_t *) &req, sizeof(kd_req_t), buf, payload);
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
 ret = rr->r_mem.read;
 free (pkt);
 return ret;
}
