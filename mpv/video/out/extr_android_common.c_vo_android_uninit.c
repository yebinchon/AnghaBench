
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_android_state {scalar_t__ native_window; } ;
struct vo {struct vo_android_state* android; } ;


 int ANativeWindow_release (scalar_t__) ;
 int talloc_free (struct vo_android_state*) ;

void vo_android_uninit(struct vo *vo)
{
    struct vo_android_state *ctx = vo->android;
    if (!ctx)
        return;

    if (ctx->native_window)
        ANativeWindow_release(ctx->native_window);

    talloc_free(ctx);
    vo->android = ((void*)0);
}
