
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_object {int * name; } ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int D3DRM_OK ;
 int E_OUTOFMEMORY ;
 int * heap_alloc (scalar_t__) ;
 int heap_free (int *) ;
 int memcpy (int *,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

HRESULT d3drm_object_set_name(struct d3drm_object *object, const char *name)
{
    DWORD req_size;

    heap_free(object->name);
    object->name = ((void*)0);

    if (name)
    {
        req_size = strlen(name) + 1;
        if (!(object->name = heap_alloc(req_size)))
            return E_OUTOFMEMORY;
        memcpy(object->name, name, req_size);
    }

    return D3DRM_OK;
}
