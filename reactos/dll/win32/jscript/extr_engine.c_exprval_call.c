
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * stack; } ;
typedef TYPE_3__ script_ctx_t ;
typedef int jsval_t ;
struct TYPE_9__ {int id; int disp; } ;
struct TYPE_10__ {size_t off; TYPE_1__ idref; } ;
struct TYPE_12__ {int type; TYPE_2__ u; } ;
typedef TYPE_4__ exprval_t ;
typedef int WORD ;
typedef int HRESULT ;




 int E_FAIL ;
 int FIXME (char*,int ) ;
 int assert (int ) ;
 int debugstr_jsval (int ) ;
 int disp_call (TYPE_3__*,int ,int ,int ,unsigned int,int *,int *) ;
 int disp_call_value (TYPE_3__*,int ,int *,int ,unsigned int,int *,int *) ;
 int get_object (int ) ;
 int is_object_instance (int ) ;

__attribute__((used)) static HRESULT exprval_call(script_ctx_t *ctx, exprval_t *ref, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    switch(ref->type) {
    case 128: {
        jsval_t v = ctx->stack[ref->u.off];

        if(!is_object_instance(v)) {
            FIXME("invoke %s\n", debugstr_jsval(v));
            return E_FAIL;
        }

        return disp_call_value(ctx, get_object(v), ((void*)0), flags, argc, argv, r);
    }
    case 129:
        return disp_call(ctx, ref->u.idref.disp, ref->u.idref.id, flags, argc, argv, r);
    default:
        assert(0);
        return E_FAIL;
    }
}
