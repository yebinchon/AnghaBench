
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct MDCBufData {int avail; TYPE_1__* ctx; int * pos; } ;
struct TYPE_2__ {int mdc_ctx; } ;


 int memcpy (int *,int *,int) ;
 int px_md_update (int ,int *,int) ;

__attribute__((used)) static void
mdcbuf_load_data(struct MDCBufData *st, uint8 *src, int len)
{
 uint8 *dst = st->pos + st->avail;

 memcpy(dst, src, len);
 px_md_update(st->ctx->mdc_ctx, src, len);
 st->avail += len;
}
