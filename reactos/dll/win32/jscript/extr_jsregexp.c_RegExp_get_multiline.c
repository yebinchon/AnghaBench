
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_4__ {TYPE_1__* jsregexp; } ;
struct TYPE_3__ {int flags; } ;
typedef int HRESULT ;


 int REG_MULTILINE ;
 int S_OK ;
 int TRACE (char*) ;
 int jsval_bool (int) ;
 TYPE_2__* regexp_from_jsdisp (int *) ;

__attribute__((used)) static HRESULT RegExp_get_multiline(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    TRACE("\n");

    *r = jsval_bool(!!(regexp_from_jsdisp(jsthis)->jsregexp->flags & REG_MULTILINE));
    return S_OK;
}
