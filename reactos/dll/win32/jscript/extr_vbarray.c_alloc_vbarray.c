
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int vbarray_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsdisp_t ;
struct TYPE_10__ {int dispex; } ;
typedef TYPE_2__ VBArrayInstance ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int VBArray_info ;
 TYPE_2__* heap_alloc_zero (int) ;
 int heap_free (TYPE_2__*) ;
 int init_dispex (int *,TYPE_1__*,int *,int *) ;
 int init_dispex_from_constr (int *,TYPE_1__*,int *,int ) ;

__attribute__((used)) static HRESULT alloc_vbarray(script_ctx_t *ctx, jsdisp_t *object_prototype, VBArrayInstance **ret)
{
    VBArrayInstance *vbarray;
    HRESULT hres;

    vbarray = heap_alloc_zero(sizeof(VBArrayInstance));
    if(!vbarray)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = init_dispex(&vbarray->dispex, ctx, &VBArray_info, object_prototype);
    else
        hres = init_dispex_from_constr(&vbarray->dispex, ctx, &VBArray_info, ctx->vbarray_constr);

    if(FAILED(hres)) {
        heap_free(vbarray);
        return hres;
    }

    *ret = vbarray;
    return S_OK;
}
