
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {int * device; } ;
struct TYPE_8__ {TYPE_2__* hwctx; } ;
typedef int ID3D11Device ;
typedef TYPE_1__ AVHWDeviceContext ;
typedef TYPE_2__ AVD3D11VADeviceContext ;
typedef TYPE_3__ AVBufferRef ;


 int AV_HWDEVICE_TYPE_D3D11VA ;
 int ID3D11Device_AddRef (int *) ;
 int av_buffer_unref (TYPE_3__**) ;
 TYPE_3__* av_hwdevice_ctx_alloc (int ) ;
 scalar_t__ av_hwdevice_ctx_init (TYPE_3__*) ;

AVBufferRef *d3d11_wrap_device_ref(ID3D11Device *device)
{
    AVBufferRef *device_ref = av_hwdevice_ctx_alloc(AV_HWDEVICE_TYPE_D3D11VA);
    if (!device_ref)
        return ((void*)0);

    AVHWDeviceContext *ctx = (void *)device_ref->data;
    AVD3D11VADeviceContext *hwctx = ctx->hwctx;

    ID3D11Device_AddRef(device);
    hwctx->device = device;

    if (av_hwdevice_ctx_init(device_ref) < 0)
        av_buffer_unref(&device_ref);

    return device_ref;
}
