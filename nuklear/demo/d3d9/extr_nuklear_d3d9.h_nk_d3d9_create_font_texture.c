
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int null; int texture; int atlas; int device; } ;
struct TYPE_4__ {int Pitch; scalar_t__ pBits; } ;
typedef int HRESULT ;
typedef TYPE_1__ D3DLOCKED_RECT ;


 int D3DFMT_A8R8G8B8 ;
 int D3DPOOL_DEFAULT ;
 int D3DUSAGE_DYNAMIC ;
 int IDirect3DDevice9_CreateTexture (int ,int,int,int,int ,int ,int ,int *,int *) ;
 int IDirect3DTexture9_LockRect (int ,int ,TYPE_1__*,int *,int ) ;
 int IDirect3DTexture9_UnlockRect (int ,int ) ;
 int NK_ASSERT (int ) ;
 int NK_FONT_ATLAS_RGBA32 ;
 int SUCCEEDED (int ) ;
 TYPE_2__ d3d9 ;
 int memcpy (void*,void*,int) ;
 void* nk_font_atlas_bake (int *,int*,int*,int ) ;
 int nk_font_atlas_end (int *,int ,int *) ;
 int nk_handle_ptr (int ) ;

__attribute__((used)) static void
nk_d3d9_create_font_texture()
{
    int w, h, y;
    const void *image;

    HRESULT hr;
    D3DLOCKED_RECT locked;

    image = nk_font_atlas_bake(&d3d9.atlas, &w, &h, NK_FONT_ATLAS_RGBA32);

    hr = IDirect3DDevice9_CreateTexture(d3d9.device, w, h, 1, D3DUSAGE_DYNAMIC, D3DFMT_A8R8G8B8, D3DPOOL_DEFAULT, &d3d9.texture, ((void*)0));
    NK_ASSERT(SUCCEEDED(hr));

    hr = IDirect3DTexture9_LockRect(d3d9.texture, 0, &locked, ((void*)0), 0);
    NK_ASSERT(SUCCEEDED(hr));

    for (y = 0; y < h; y++) {
        void *src = (char *)image + y * w * 4;
        void *dst = (char *)locked.pBits + y * locked.Pitch;
        memcpy(dst, src, w * 4);
    }

    hr = IDirect3DTexture9_UnlockRect(d3d9.texture, 0);
    NK_ASSERT(SUCCEEDED(hr));

    nk_font_atlas_end(&d3d9.atlas, nk_handle_ptr(d3d9.texture), &d3d9.null);
}
