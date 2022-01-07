
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* pInputPin; } ;
struct quartz_vmr {int cookie; int presenter; int target_rect; int source_rect; TYPE_3__ renderer; } ;
struct TYPE_16__ {int lpSurf; } ;
typedef TYPE_4__ VMR9PresentationInfo ;
struct TYPE_20__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; int biCompression; } ;
struct TYPE_17__ {TYPE_8__ bmiHeader; } ;
typedef TYPE_5__ VIDEOINFOHEADER2 ;
struct TYPE_18__ {TYPE_8__ bmiHeader; } ;
typedef TYPE_6__ VIDEOINFOHEADER ;
struct TYPE_21__ {int subtype; scalar_t__ pbFormat; int formattype; } ;
struct TYPE_19__ {char* pBits; int Pitch; } ;
struct TYPE_13__ {TYPE_9__ mtCurrent; } ;
struct TYPE_14__ {TYPE_1__ pin; } ;
typedef int LPSTR ;
typedef scalar_t__ LPBYTE ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_7__ D3DLOCKED_RECT ;
typedef TYPE_8__ BITMAPINFOHEADER ;
typedef TYPE_9__ AM_MEDIA_TYPE ;


 int D3DLOCK_DISCARD ;
 int ERR (char*,int) ;
 scalar_t__ FAILED (int) ;
 int FIXME (char*,int ) ;
 int FORMAT_VideoInfo ;
 int FORMAT_VideoInfo2 ;
 int IDirect3DSurface9_LockRect (int ,TYPE_7__*,int *,int ) ;
 int IDirect3DSurface9_UnlockRect (int ) ;
 int IVMRImagePresenter9_PresentImage (int ,int ,TYPE_4__*) ;
 scalar_t__ IsEqualIID (int *,int *) ;
 int S_OK ;
 int TRACE (char*,...) ;
 int VFW_E_RUNTIME_ERROR ;
 int WARN (char*,int,int) ;
 int debugstr_an (int ,int) ;
 int debugstr_guid (int *) ;
 int memcpy (char*,scalar_t__,int) ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static DWORD VMR9_SendSampleData(struct quartz_vmr *This, VMR9PresentationInfo *info, LPBYTE data,
                                 DWORD size)
{
    AM_MEDIA_TYPE *amt;
    HRESULT hr = S_OK;
    int width;
    int height;
    BITMAPINFOHEADER *bmiHeader;
    D3DLOCKED_RECT lock;

    TRACE("%p %p %d\n", This, data, size);

    amt = &This->renderer.pInputPin->pin.mtCurrent;

    if (IsEqualIID(&amt->formattype, &FORMAT_VideoInfo))
    {
        bmiHeader = &((VIDEOINFOHEADER *)amt->pbFormat)->bmiHeader;
    }
    else if (IsEqualIID(&amt->formattype, &FORMAT_VideoInfo2))
    {
        bmiHeader = &((VIDEOINFOHEADER2 *)amt->pbFormat)->bmiHeader;
    }
    else
    {
        FIXME("Unknown type %s\n", debugstr_guid(&amt->subtype));
        return VFW_E_RUNTIME_ERROR;
    }

    TRACE("biSize = %d\n", bmiHeader->biSize);
    TRACE("biWidth = %d\n", bmiHeader->biWidth);
    TRACE("biHeight = %d\n", bmiHeader->biHeight);
    TRACE("biPlanes = %d\n", bmiHeader->biPlanes);
    TRACE("biBitCount = %d\n", bmiHeader->biBitCount);
    TRACE("biCompression = %s\n", debugstr_an((LPSTR)&(bmiHeader->biCompression), 4));
    TRACE("biSizeImage = %d\n", bmiHeader->biSizeImage);

    width = bmiHeader->biWidth;
    height = bmiHeader->biHeight;

    TRACE("Src Rect: %s\n", wine_dbgstr_rect(&This->source_rect));
    TRACE("Dst Rect: %s\n", wine_dbgstr_rect(&This->target_rect));

    hr = IDirect3DSurface9_LockRect(info->lpSurf, &lock, ((void*)0), D3DLOCK_DISCARD);
    if (FAILED(hr))
    {
        ERR("IDirect3DSurface9_LockRect failed (%x)\n",hr);
        return hr;
    }

    if (height > 0) {

        lock.pBits = (char *)lock.pBits + (height * lock.Pitch);
        while (height--)
        {
            lock.pBits = (char *)lock.pBits - lock.Pitch;
            memcpy(lock.pBits, data, width * bmiHeader->biBitCount / 8);
            data = data + width * bmiHeader->biBitCount / 8;
        }
    }
    else if (lock.Pitch != width * bmiHeader->biBitCount / 8)
    {
        WARN("Slow path! %u/%u\n", lock.Pitch, width * bmiHeader->biBitCount/8);

        while (height--)
        {
            memcpy(lock.pBits, data, width * bmiHeader->biBitCount / 8);
            data = data + width * bmiHeader->biBitCount / 8;
            lock.pBits = (char *)lock.pBits + lock.Pitch;
        }
    }
    else memcpy(lock.pBits, data, size);

    IDirect3DSurface9_UnlockRect(info->lpSurf);

    hr = IVMRImagePresenter9_PresentImage(This->presenter, This->cookie, info);
    return hr;
}
