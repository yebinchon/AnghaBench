
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_2__ {int mdc_ctx; scalar_t__ in_mdc_pkt; scalar_t__ use_mdcbuf_filter; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_Context ;


 int PXE_PGP_CORRUPT_DATA ;
 int pullf_read (int *,int,int **) ;
 int px_debug (char*) ;
 int px_md_update (int ,int *,int) ;

__attribute__((used)) static int
mdc_read(void *priv, PullFilter *src, int len,
   uint8 **data_p, uint8 *buf, int buflen)
{
 int res;
 PGP_Context *ctx = priv;


 if (ctx->use_mdcbuf_filter || ctx->in_mdc_pkt)
  return pullf_read(src, len, data_p);

 res = pullf_read(src, len, data_p);
 if (res < 0)
  return res;
 if (res == 0)
 {
  px_debug("mdc_read: unexpected eof");
  return PXE_PGP_CORRUPT_DATA;
 }
 px_md_update(ctx->mdc_ctx, *data_p, res);

 return res;
}
