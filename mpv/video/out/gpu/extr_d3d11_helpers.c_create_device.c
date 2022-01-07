
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
typedef int UINT ;
typedef int IDXGIAdapter1 ;
typedef int IDXGIAdapter ;
typedef int ID3D11Device ;
typedef int HRESULT ;
typedef int D3D_FEATURE_LEVEL ;
typedef int D3D_DRIVER_TYPE ;


 int D3D11_CREATE_DEVICE_DEBUG ;
 int D3D11_SDK_VERSION ;
 int D3D_DRIVER_TYPE_HARDWARE ;
 int D3D_DRIVER_TYPE_UNKNOWN ;
 int D3D_DRIVER_TYPE_WARP ;
 int E_FAIL ;
 int get_feature_levels (int,int,int const**) ;
 int mp_fatal (struct mp_log*,char*) ;
 int pD3D11CreateDevice (int *,int ,int *,int ,int const*,int,int ,int **,int *,int *) ;

__attribute__((used)) static HRESULT create_device(struct mp_log *log, IDXGIAdapter1 *adapter,
                             bool warp, bool debug, int max_fl, int min_fl,
                             ID3D11Device **dev)
{
    const D3D_FEATURE_LEVEL *levels;
    int levels_len = get_feature_levels(max_fl, min_fl, &levels);
    if (!levels_len) {
        mp_fatal(log, "No suitable Direct3D feature level found\n");
        return E_FAIL;
    }

    D3D_DRIVER_TYPE type = warp ? D3D_DRIVER_TYPE_WARP
                                : D3D_DRIVER_TYPE_HARDWARE;
    UINT flags = debug ? D3D11_CREATE_DEVICE_DEBUG : 0;
    return pD3D11CreateDevice((IDXGIAdapter *)adapter, adapter ? D3D_DRIVER_TYPE_UNKNOWN : type,
                              ((void*)0), flags, levels, levels_len, D3D11_SDK_VERSION, dev, ((void*)0), ((void*)0));
}
