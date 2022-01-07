
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
struct TYPE_6__ {int disp; } ;
struct TYPE_7__ {TYPE_1__ idref; int val; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_3__ exprval_t ;
typedef int HRESULT ;


 scalar_t__ EXPRVAL_IDREF ;
 scalar_t__ EXPRVAL_JSVAL ;
 int IDispatch_Release (int ) ;
 int S_OK ;
 int exprval_propget (int *,TYPE_3__*,int *) ;

__attribute__((used)) static HRESULT exprval_to_value(script_ctx_t *ctx, exprval_t *ref, jsval_t *r)
{
    HRESULT hres;

    if(ref->type == EXPRVAL_JSVAL) {
        *r = ref->u.val;
        return S_OK;
    }

    hres = exprval_propget(ctx, ref, r);

    if(ref->type == EXPRVAL_IDREF)
        IDispatch_Release(ref->u.idref.disp);
    return hres;
}
