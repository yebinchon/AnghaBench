
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_android_state {int * native_window; } ;
struct vo {struct vo_android_state* android; } ;
typedef int ANativeWindow ;



ANativeWindow *vo_android_native_window(struct vo *vo)
{
    struct vo_android_state *ctx = vo->android;
    return ctx->native_window;
}
