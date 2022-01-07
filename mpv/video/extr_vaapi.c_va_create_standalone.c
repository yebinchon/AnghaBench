
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vaapi_opts {int path; } ;
struct mpv_global {int dummy; } ;
struct TYPE_3__ {struct AVBufferRef* av_device_ref; } ;
struct mp_vaapi_ctx {TYPE_1__ hwctx; int (* destroy_native_ctx ) (void*) ;void* native_ctx; } ;
struct mp_log {int dummy; } ;
struct hwcontext_create_dev_params {int probing; } ;
struct AVBufferRef {int dummy; } ;
typedef int VADisplay ;
struct TYPE_4__ {int (* destroy ) (void*) ;int (* create ) (int **,void**,int ) ;} ;


 struct vaapi_opts* mp_get_config_group (int *,struct mpv_global*,int *) ;
 TYPE_2__** native_displays ;
 int stub1 (int **,void**,int ) ;
 int stub2 (void*) ;
 int talloc_free (struct vaapi_opts*) ;
 int vaTerminate (int *) ;
 struct mp_vaapi_ctx* va_initialize (int *,struct mp_log*,int ) ;
 int vaapi_conf ;

__attribute__((used)) static struct AVBufferRef *va_create_standalone(struct mpv_global *global,
        struct mp_log *log, struct hwcontext_create_dev_params *params)
{
    struct AVBufferRef *ret = ((void*)0);
    struct vaapi_opts *opts = mp_get_config_group(((void*)0), global, &vaapi_conf);

    for (int n = 0; native_displays[n]; n++) {
        VADisplay *display = ((void*)0);
        void *native_ctx = ((void*)0);
        native_displays[n]->create(&display, &native_ctx, opts->path);
        if (display) {
            struct mp_vaapi_ctx *ctx =
                va_initialize(display, log, params->probing);
            if (!ctx) {
                vaTerminate(display);
                native_displays[n]->destroy(native_ctx);
                goto end;
            }
            ctx->native_ctx = native_ctx;
            ctx->destroy_native_ctx = native_displays[n]->destroy;
            ret = ctx->hwctx.av_device_ref;
            goto end;
        }
    }

end:
    talloc_free(opts);
    return ret;
}
