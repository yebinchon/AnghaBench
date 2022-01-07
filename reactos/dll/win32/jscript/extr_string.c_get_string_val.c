
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int disp; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int script_ctx_t ;
typedef int jsstr_t ;
struct TYPE_9__ {int str; } ;
typedef TYPE_3__ StringInstance ;
typedef int HRESULT ;


 int S_OK ;
 int * jsstr_addref (int ) ;
 int jsval_disp (int ) ;
 TYPE_3__* string_this (TYPE_2__*) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT get_string_val(script_ctx_t *ctx, vdisp_t *jsthis, jsstr_t **val)
{
    StringInstance *string;

    if((string = string_this(jsthis))) {
        *val = jsstr_addref(string->str);
        return S_OK;
    }

    return to_string(ctx, jsval_disp(jsthis->u.disp), val);
}
