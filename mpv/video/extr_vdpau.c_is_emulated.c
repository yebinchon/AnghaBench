
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vdpau_ctx {int dummy; } ;
struct AVBufferRef {int dummy; } ;


 struct mp_vdpau_ctx* mp_vdpau_get_ctx_from_av (struct AVBufferRef*) ;
 int mp_vdpau_guess_if_emulated (struct mp_vdpau_ctx*) ;

__attribute__((used)) static bool is_emulated(struct AVBufferRef *hw_device_ctx)
{
    struct mp_vdpau_ctx *ctx = mp_vdpau_get_ctx_from_av(hw_device_ctx);
    if (!ctx)
        return 0;

    return mp_vdpau_guess_if_emulated(ctx);
}
