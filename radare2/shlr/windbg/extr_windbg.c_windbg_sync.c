
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int cpu_count; int cpu; } ;
typedef TYPE_1__ kd_stc_64 ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_2__ kd_packet_t ;
struct TYPE_10__ {int syncd; int seq_id; int cpu_count; scalar_t__ pae; int * tlist_cache; int * plist_cache; int * target; int cpu; int io_ptr; } ;
typedef TYPE_3__ WindCtx ;


 int KD_E_OK ;
 int KD_PACKET_TYPE_RESET ;
 int KD_PACKET_TYPE_STATE_CHANGE64 ;
 int eprintf (char*,int ) ;
 int free (TYPE_2__*) ;
 int iob_write (int ,int const*,int) ;
 int kd_send_ctrl_packet (int ,int ,int ) ;
 int r_list_free (int *) ;
 int windbg_wait_packet (TYPE_3__*,int ,TYPE_2__**) ;

int windbg_sync(WindCtx *ctx) {
 int ret;
 kd_packet_t *s;

 if (!ctx || !ctx->io_ptr) {
  return 0;
 }

 if (ctx->syncd) {
  return 1;
 }


 if (iob_write (ctx->io_ptr, (const uint8_t *) "b", 1) != 1) {
  return 0;
 }


 ret = kd_send_ctrl_packet (ctx->io_ptr, KD_PACKET_TYPE_RESET, 0);
 if (ret != KD_E_OK) {
  return 0;
 }


 ret = windbg_wait_packet (ctx, KD_PACKET_TYPE_RESET, ((void*)0));
 if (ret != KD_E_OK) {
  return 0;
 }


 windbg_wait_packet (ctx, KD_PACKET_TYPE_STATE_CHANGE64, &s);


 ctx->seq_id = 0x80800001;

 kd_stc_64 *stc64 = (kd_stc_64*)s->data;
 ctx->cpu = stc64->cpu;
 ctx->cpu_count = stc64->cpu_count;
 ctx->target = ((void*)0);
 r_list_free (ctx->plist_cache);
 ctx->plist_cache = ((void*)0);
 r_list_free (ctx->tlist_cache);
 ctx->tlist_cache = ((void*)0);
 ctx->pae = 0;

 ctx->syncd = 1;

 free (s);
 eprintf ("Sync done! (%i cpus found)\n", ctx->cpu_count);
 return 1;
}
