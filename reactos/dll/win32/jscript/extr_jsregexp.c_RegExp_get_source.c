
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_2__ {int str; } ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*) ;
 int jsstr_addref (int ) ;
 int jsval_string (int ) ;
 TYPE_1__* regexp_from_jsdisp (int *) ;

__attribute__((used)) static HRESULT RegExp_get_source(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    TRACE("\n");

    *r = jsval_string(jsstr_addref(regexp_from_jsdisp(jsthis)->str));
    return S_OK;
}
