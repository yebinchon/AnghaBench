
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct MDCBufData {int eof; int* mdc_buf; TYPE_1__* ctx; } ;
struct TYPE_2__ {int mdc_ctx; } ;


 int PXE_PGP_CORRUPT_DATA ;
 int memcmp (int *,int*,int) ;
 int px_debug (char*) ;
 int px_md_finish (int ,int *) ;
 int px_md_update (int ,int*,int) ;
 int px_memset (int *,int ,int) ;

__attribute__((used)) static int
mdcbuf_finish(struct MDCBufData *st)
{
 uint8 hash[20];
 int res;

 st->eof = 1;

 if (st->mdc_buf[0] != 0xD3 || st->mdc_buf[1] != 0x14)
 {
  px_debug("mdcbuf_finish: bad MDC pkt hdr");
  return PXE_PGP_CORRUPT_DATA;
 }
 px_md_update(st->ctx->mdc_ctx, st->mdc_buf, 2);
 px_md_finish(st->ctx->mdc_ctx, hash);
 res = memcmp(hash, st->mdc_buf + 2, 20);
 px_memset(hash, 0, 20);
 if (res)
 {
  px_debug("mdcbuf_finish: MDC does not match");
  res = PXE_PGP_CORRUPT_DATA;
 }
 return res;
}
