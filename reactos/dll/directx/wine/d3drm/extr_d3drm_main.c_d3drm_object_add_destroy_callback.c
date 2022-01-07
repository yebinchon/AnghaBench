
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct destroy_callback {int entry; void* ctx; scalar_t__ cb; } ;
struct d3drm_object {int destroy_callbacks; } ;
typedef int HRESULT ;
typedef scalar_t__ D3DRMOBJECTCALLBACK ;


 int D3DRMERR_BADVALUE ;
 int D3DRM_OK ;
 int E_OUTOFMEMORY ;
 struct destroy_callback* heap_alloc (int) ;
 int list_add_head (int *,int *) ;

HRESULT d3drm_object_add_destroy_callback(struct d3drm_object *object, D3DRMOBJECTCALLBACK cb, void *ctx)
{
    struct destroy_callback *callback;

    if (!cb)
        return D3DRMERR_BADVALUE;

    if (!(callback = heap_alloc(sizeof(*callback))))
        return E_OUTOFMEMORY;

    callback->cb = cb;
    callback->ctx = ctx;

    list_add_head(&object->destroy_callbacks, &callback->entry);
    return D3DRM_OK;
}
