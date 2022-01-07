
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vaapi_ctx {int native_ctx; int (* destroy_native_ctx ) (int ) ;scalar_t__ display; } ;
struct AVHWDeviceContext {struct mp_vaapi_ctx* user_opaque; } ;


 int stub1 (int ) ;
 int talloc_free (struct mp_vaapi_ctx*) ;
 int vaTerminate (scalar_t__) ;

__attribute__((used)) static void free_device_ref(struct AVHWDeviceContext *hwctx)
{
    struct mp_vaapi_ctx *ctx = hwctx->user_opaque;

    if (ctx->display)
        vaTerminate(ctx->display);

    if (ctx->destroy_native_ctx)
        ctx->destroy_native_ctx(ctx->native_ctx);

    talloc_free(ctx);
}
