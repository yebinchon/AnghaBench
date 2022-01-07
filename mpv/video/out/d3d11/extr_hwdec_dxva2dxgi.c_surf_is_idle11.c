
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec_mapper {struct priv* priv; } ;
struct queue_surf {int busy11; scalar_t__ idle11; } ;
struct priv {int ctx11; } ;
typedef int idle ;
typedef int ID3D11Asynchronous ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int D3D11_ASYNC_GETDATA_DONOTFLUSH ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ ID3D11DeviceContext_GetData (int ,int *,int *,int,int ) ;
 scalar_t__ S_FALSE ;

__attribute__((used)) static bool surf_is_idle11(struct ra_hwdec_mapper *mapper,
                           struct queue_surf *surf)
{
    struct priv *p = mapper->priv;
    HRESULT hr;
    BOOL idle;

    if (!surf->busy11)
        return 1;

    hr = ID3D11DeviceContext_GetData(p->ctx11,
        (ID3D11Asynchronous *)surf->idle11, &idle, sizeof(idle),
        D3D11_ASYNC_GETDATA_DONOTFLUSH);
    if (FAILED(hr) || hr == S_FALSE || !idle)
        return 0;

    surf->busy11 = 0;
    return 1;
}
