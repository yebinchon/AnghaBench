
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ra_hwdec {int devs; TYPE_1__* driver; scalar_t__ probing; int log; struct priv_owner* priv; int ra; } ;
struct priv_owner {TYPE_4__* ctx; } ;
struct TYPE_11__ {int driver_name; } ;
struct TYPE_10__ {TYPE_7__ hwctx; } ;
struct TYPE_9__ {int mpgl_caps; } ;
struct TYPE_8__ {int name; } ;
typedef TYPE_2__ GL ;
typedef int Display ;


 int MPGL_CAP_VDPAU ;
 int hwdec_devices_add (int ,TYPE_7__*) ;
 TYPE_4__* mp_vdpau_create_device_x11 (int ,int *,int) ;
 scalar_t__ mp_vdpau_guess_if_emulated (TYPE_4__*) ;
 int mp_vdpau_handle_preemption (TYPE_4__*,int *) ;
 int * ra_get_native_resource (int ,char*) ;
 TYPE_2__* ra_gl_get (int ) ;
 int ra_is_gl (int ) ;

__attribute__((used)) static int init(struct ra_hwdec *hw)
{
    Display *x11disp = ra_get_native_resource(hw->ra, "x11");
    if (!x11disp || !ra_is_gl(hw->ra))
        return -1;
    GL *gl = ra_gl_get(hw->ra);
    if (!(gl->mpgl_caps & MPGL_CAP_VDPAU))
        return -1;
    struct priv_owner *p = hw->priv;
    p->ctx = mp_vdpau_create_device_x11(hw->log, x11disp, 1);
    if (!p->ctx)
        return -1;
    if (mp_vdpau_handle_preemption(p->ctx, ((void*)0)) < 1)
        return -1;
    if (hw->probing && mp_vdpau_guess_if_emulated(p->ctx))
        return -1;
    p->ctx->hwctx.driver_name = hw->driver->name;
    hwdec_devices_add(hw->devs, &p->ctx->hwctx);
    return 0;
}
