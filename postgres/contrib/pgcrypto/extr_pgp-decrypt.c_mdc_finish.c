
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int tmpbuf ;
struct TYPE_3__ {int in_mdc_pkt; int mdc_checked; int mdc_ctx; scalar_t__ use_mdcbuf_filter; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_Context ;


 int PXE_BUG ;
 int PXE_PGP_CORRUPT_DATA ;
 int memcmp (int *,int *,int) ;
 int pullf_read_max (int *,int,int **,int *) ;
 int px_debug (char*,...) ;
 int px_md_finish (int ,int *) ;
 int px_memset (int *,int ,int) ;

__attribute__((used)) static int
mdc_finish(PGP_Context *ctx, PullFilter *src, int len)
{
 int res;
 uint8 hash[20];
 uint8 tmpbuf[20];
 uint8 *data;


 if (ctx->use_mdcbuf_filter)
  return PXE_BUG;


 if (len != 20)
  return PXE_PGP_CORRUPT_DATA;


 ctx->in_mdc_pkt = 1;


 res = pullf_read_max(src, len, &data, tmpbuf);
 if (res < 0)
  return res;
 if (res == 0)
 {
  px_debug("no mdc");
  return PXE_PGP_CORRUPT_DATA;
 }


 if (res != 20)
 {
  px_debug("mdc_finish: read failed, res=%d", res);
  return PXE_PGP_CORRUPT_DATA;
 }




 px_md_finish(ctx->mdc_ctx, hash);
 res = memcmp(hash, data, 20);
 px_memset(hash, 0, 20);
 px_memset(tmpbuf, 0, sizeof(tmpbuf));
 if (res != 0)
 {
  px_debug("mdc_finish: mdc failed");
  return PXE_PGP_CORRUPT_DATA;
 }
 ctx->mdc_checked = 1;
 return 0;
}
