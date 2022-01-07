
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int reason; int tf; } ;
struct TYPE_7__ {TYPE_1__ r_cont; int cpu; int req; int member_0; } ;
typedef TYPE_2__ kd_req_t ;
struct TYPE_8__ {int seq_id; int * plist_cache; int io_ptr; int cpu; int syncd; } ;
typedef TYPE_3__ WindCtx ;


 int DbgKdContinueApi2 ;
 int KD_E_OK ;
 int KD_PACKET_TYPE_ACKNOWLEDGE ;
 int KD_PACKET_TYPE_STATE_MANIPULATE ;
 int kd_send_data_packet (int ,int ,int,int *,int,int *,int ) ;
 int r_list_free (int *) ;
 int windbg_wait_packet (TYPE_3__*,int ,int *) ;

int windbg_continue(WindCtx *ctx) {
 kd_req_t req = {
  0
 };
 int ret;

 if (!ctx || !ctx->io_ptr || !ctx->syncd) {
  return 0;
 }
 req.req = DbgKdContinueApi2;
 req.cpu = ctx->cpu;
 req.r_cont.reason = 0x10001;


 req.r_cont.tf = 0x400;

 ret = kd_send_data_packet (ctx->io_ptr, KD_PACKET_TYPE_STATE_MANIPULATE,
  (ctx->seq_id ^= 1), (uint8_t *) &req, sizeof (kd_req_t), ((void*)0), 0);
 if (ret == KD_E_OK) {
  ret = windbg_wait_packet (ctx, KD_PACKET_TYPE_ACKNOWLEDGE, ((void*)0));
  if (ret == KD_E_OK) {

   r_list_free (ctx->plist_cache);
   ctx->plist_cache = ((void*)0);
   return 1;
  }
 }
 return 0;
}
