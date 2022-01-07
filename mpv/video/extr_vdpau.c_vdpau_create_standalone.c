
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_global {int dummy; } ;
struct TYPE_2__ {struct AVBufferRef* av_device_ref; } ;
struct mp_vdpau_ctx {int close_display; TYPE_1__ hwctx; } ;
struct mp_log {int dummy; } ;
struct hwcontext_create_dev_params {int probing; } ;
struct AVBufferRef {int dummy; } ;
typedef int Display ;


 int XCloseDisplay (int *) ;
 int XInitThreads () ;
 int * XOpenDisplay (int *) ;
 struct mp_vdpau_ctx* mp_vdpau_create_device_x11 (struct mp_log*,int *,int ) ;

__attribute__((used)) static struct AVBufferRef *vdpau_create_standalone(struct mpv_global *global,
        struct mp_log *log, struct hwcontext_create_dev_params *params)
{
    XInitThreads();

    Display *display = XOpenDisplay(((void*)0));
    if (!display)
        return ((void*)0);

    struct mp_vdpau_ctx *vdp =
        mp_vdpau_create_device_x11(log, display, params->probing);
    if (!vdp) {
        XCloseDisplay(display);
        return ((void*)0);
    }

    vdp->close_display = 1;
    return vdp->hwctx.av_device_ref;
}
