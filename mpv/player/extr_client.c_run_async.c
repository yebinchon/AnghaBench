
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* mpctx; } ;
typedef TYPE_2__ mpv_handle ;
struct TYPE_5__ {int dispatch; } ;


 int mp_dispatch_enqueue (int ,void (*) (void*),void*) ;
 int reserve_reply (TYPE_2__*) ;
 int talloc_free (void*) ;

__attribute__((used)) static int run_async(mpv_handle *ctx, void (*fn)(void *fn_data), void *fn_data)
{
    int err = reserve_reply(ctx);
    if (err < 0) {
        talloc_free(fn_data);
        return err;
    }
    mp_dispatch_enqueue(ctx->mpctx->dispatch, fn, fn_data);
    return 0;
}
