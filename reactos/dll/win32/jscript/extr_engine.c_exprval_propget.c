
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * stack; } ;
typedef TYPE_3__ script_ctx_t ;
typedef int jsval_t ;
struct TYPE_8__ {int id; int disp; } ;
struct TYPE_9__ {size_t off; TYPE_1__ idref; } ;
struct TYPE_11__ {int type; TYPE_2__ u; } ;
typedef TYPE_4__ exprval_t ;
typedef int HRESULT ;




 int E_FAIL ;
 int assert (int ) ;
 int disp_propget (TYPE_3__*,int ,int ,int *) ;
 int jsval_copy (int ,int *) ;

__attribute__((used)) static HRESULT exprval_propget(script_ctx_t *ctx, exprval_t *ref, jsval_t *r)
{
    switch(ref->type) {
    case 128:
        return jsval_copy(ctx->stack[ref->u.off], r);
    case 129:
        return disp_propget(ctx, ref->u.idref.disp, ref->u.idref.id, r);
    default:
        assert(0);
        return E_FAIL;
    }
}
