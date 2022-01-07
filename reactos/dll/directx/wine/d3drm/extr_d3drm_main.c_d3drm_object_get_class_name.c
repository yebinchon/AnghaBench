
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_object {int classname; } ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int D3DRM_OK ;
 int E_INVALIDARG ;
 int memcpy (char*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

HRESULT d3drm_object_get_class_name(struct d3drm_object *object, DWORD *size, char *name)
{
    DWORD req_size;

    if (!size)
        return E_INVALIDARG;

    req_size = strlen(object->classname) + 1;
    if (name && *size < req_size)
        return E_INVALIDARG;

    *size = req_size;

    if (name)
        memcpy(name, object->classname, req_size);

    return D3DRM_OK;
}
