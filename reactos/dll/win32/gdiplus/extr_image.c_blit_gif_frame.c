
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int height; int width; int stride; scalar_t__ bits; } ;
typedef int IWICBitmapSource ;
typedef int IWICBitmapFrameDecode ;
typedef int HRESULT ;
typedef TYPE_1__ GpBitmap ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GUID_WICPixelFormat32bppBGRA ;
 int IWICBitmapSource_CopyPixels (int *,int *,int,int,int *) ;
 int IWICBitmapSource_Release (int *) ;
 int WICConvertBitmapSource (int *,int *,int **) ;
 int get_gif_frame_rect (int *,int*,int*,int*,int*) ;
 int * heap_alloc_zero (int) ;
 int heap_free (int *) ;

__attribute__((used)) static HRESULT blit_gif_frame(GpBitmap *bitmap, IWICBitmapFrameDecode *frame, BOOL first_frame)
{
    UINT i, j, left, top, width, height;
    IWICBitmapSource *source;
    BYTE *new_bits;
    HRESULT hr;

    hr = get_gif_frame_rect(frame, &left, &top, &width, &height);
    if(FAILED(hr))
        return hr;

    hr = WICConvertBitmapSource(&GUID_WICPixelFormat32bppBGRA, (IWICBitmapSource*)frame, &source);
    if(FAILED(hr))
        return hr;

    new_bits = heap_alloc_zero(width*height*4);
    if(!new_bits)
        return E_OUTOFMEMORY;

    hr = IWICBitmapSource_CopyPixels(source, ((void*)0), width*4, width*height*4, new_bits);
    IWICBitmapSource_Release(source);
    if(FAILED(hr)) {
        heap_free(new_bits);
        return hr;
    }

    for(i=0; i<height && i+top<bitmap->height; i++) {
        for(j=0; j<width && j+left<bitmap->width; j++) {
            DWORD *src = (DWORD*)(new_bits+i*width*4+j*4);
            DWORD *dst = (DWORD*)(bitmap->bits+(i+top)*bitmap->stride+(j+left)*4);

            if(first_frame || *src>>24 != 0)
                *dst = *src;
        }
    }
    heap_free(new_bits);
    return hr;
}
