
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_animation {int IDirect3DRMAnimation_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_animation_create (struct d3drm_animation**,int *) ;

__attribute__((used)) static HRESULT d3drm_create_animation_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_animation *animation;
    HRESULT hr;

    if (FAILED(hr = d3drm_animation_create(&animation, d3drm)))
        return hr;

    *object = &animation->IDirect3DRMAnimation_iface;

    return hr;
}
