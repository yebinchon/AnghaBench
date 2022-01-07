
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_object {scalar_t__ name; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int D3DRM_OK ;
 int E_INVALIDARG ;
 int memcpy (char*,scalar_t__,int) ;
 int strlen (scalar_t__) ;

HRESULT d3drm_object_get_name(struct d3drm_object *object, DWORD *size, char *name)
{
    DWORD req_size;

    if (!size)
        return E_INVALIDARG;

    req_size = object->name ? strlen(object->name) + 1 : 0;
    if (name && *size < req_size)
        return E_INVALIDARG;

    if (name)
    {
        if (object->name)
            memcpy(name, object->name, req_size);
        else if (*size)
            *name = 0;
    }

    *size = req_size;

    return D3DRM_OK;
}
