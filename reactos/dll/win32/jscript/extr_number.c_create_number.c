
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsdisp_t ;
struct TYPE_3__ {double value; int dispex; } ;
typedef TYPE_1__ NumberInstance ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int alloc_number (int *,int *,TYPE_1__**) ;

HRESULT create_number(script_ctx_t *ctx, double value, jsdisp_t **ret)
{
    NumberInstance *number;
    HRESULT hres;

    hres = alloc_number(ctx, ((void*)0), &number);
    if(FAILED(hres))
        return hres;

    number->value = value;

    *ret = &number->dispex;
    return S_OK;
}
