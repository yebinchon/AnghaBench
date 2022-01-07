
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct hwcontext_create_dev_params {int dummy; } ;
struct AVBufferRef {int dummy; } ;
typedef int ID3D11Device ;
typedef int HRESULT ;
typedef struct AVBufferRef AVBufferRef ;


 int D3D11_CREATE_DEVICE_VIDEO_SUPPORT ;
 int D3D11_SDK_VERSION ;
 int D3D_DRIVER_TYPE_HARDWARE ;
 scalar_t__ FAILED (int ) ;
 int ID3D11Device_Release (int *) ;
 int d3d11_D3D11CreateDevice (int *,int ,int *,int ,int *,int ,int ,int **,int *,int *) ;
 struct AVBufferRef* d3d11_wrap_device_ref (int *) ;
 int d3d_load_dlls () ;
 int mp_HRESULT_to_str (int ) ;
 int mp_err (struct mp_log*,char*,...) ;

__attribute__((used)) static struct AVBufferRef *d3d11_create_standalone(struct mpv_global *global,
        struct mp_log *plog, struct hwcontext_create_dev_params *params)
{
    ID3D11Device *device = ((void*)0);
    HRESULT hr;

    d3d_load_dlls();
    if (!d3d11_D3D11CreateDevice) {
        mp_err(plog, "Failed to load D3D11 library\n");
        return ((void*)0);
    }

    hr = d3d11_D3D11CreateDevice(((void*)0), D3D_DRIVER_TYPE_HARDWARE, ((void*)0),
                                 D3D11_CREATE_DEVICE_VIDEO_SUPPORT, ((void*)0), 0,
                                 D3D11_SDK_VERSION, &device, ((void*)0), ((void*)0));
    if (FAILED(hr)) {
        mp_err(plog, "Failed to create D3D11 Device: %s\n",
               mp_HRESULT_to_str(hr));
        return ((void*)0);
    }

    AVBufferRef *avref = d3d11_wrap_device_ref(device);
    ID3D11Device_Release(device);
    if (!avref)
        mp_err(plog, "Failed to allocate AVHWDeviceContext.\n");

    return avref;
}
