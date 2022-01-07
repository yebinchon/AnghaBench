
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsdisp_t ;
struct TYPE_3__ {int dispex; int safearray; } ;
typedef TYPE_1__ VBArrayInstance ;
typedef int SAFEARRAY ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int SafeArrayCopy (int *,int *) ;
 int alloc_vbarray (int *,int *,TYPE_1__**) ;
 int jsdisp_release (int *) ;

HRESULT create_vbarray(script_ctx_t *ctx, SAFEARRAY *sa, jsdisp_t **ret)
{
    VBArrayInstance *vbarray;
    HRESULT hres;

    hres = alloc_vbarray(ctx, ((void*)0), &vbarray);
    if(FAILED(hres))
        return hres;

    hres = SafeArrayCopy(sa, &vbarray->safearray);
    if(FAILED(hres)) {
        jsdisp_release(&vbarray->dispex);
        return hres;
    }

    *ret = &vbarray->dispex;
    return S_OK;
}
