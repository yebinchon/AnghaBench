
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct AVBufferRef {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__* hwctx; } ;
struct TYPE_3__ {int display; } ;
typedef TYPE_1__ AVVAAPIDeviceContext ;
typedef TYPE_2__ AVHWDeviceContext ;


 scalar_t__ strstr (char const*,char*) ;
 char* vaQueryVendorString (int ) ;

__attribute__((used)) static bool is_emulated(struct AVBufferRef *hw_device_ctx)
{
    AVHWDeviceContext *hwctx = (void *)hw_device_ctx->data;
    AVVAAPIDeviceContext *vactx = hwctx->hwctx;

    const char *s = vaQueryVendorString(vactx->display);
    return s && strstr(s, "VDPAU backend");
}
