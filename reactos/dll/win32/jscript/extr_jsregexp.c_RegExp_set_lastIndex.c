
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_3__ {int last_index; int last_index_val; } ;
typedef TYPE_1__ RegExpInstance ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int index_from_val (int *,int ) ;
 int jsval_copy (int ,int *) ;
 int jsval_release (int ) ;
 TYPE_1__* regexp_from_jsdisp (int *) ;

__attribute__((used)) static HRESULT RegExp_set_lastIndex(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t value)
{
    RegExpInstance *regexp = regexp_from_jsdisp(jsthis);
    HRESULT hres;

    TRACE("\n");

    jsval_release(regexp->last_index_val);
    hres = jsval_copy(value, &regexp->last_index_val);
    if(FAILED(hres))
        return hres;

    regexp->last_index = index_from_val(ctx, value);
    return S_OK;
}
