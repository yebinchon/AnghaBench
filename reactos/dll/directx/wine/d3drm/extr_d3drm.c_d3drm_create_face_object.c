
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_face {int IDirect3DRMFace_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_face_create (struct d3drm_face**) ;

__attribute__((used)) static HRESULT d3drm_create_face_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_face *face;
    HRESULT hr;

    if (FAILED(hr = d3drm_face_create(&face)))
        return hr;

    *object = &face->IDirect3DRMFace_iface;

    return hr;
}
