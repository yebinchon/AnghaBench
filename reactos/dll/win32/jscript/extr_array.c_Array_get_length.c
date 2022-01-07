
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_2__ {int length; } ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int *) ;
 TYPE_1__* array_from_jsdisp (int *) ;
 int jsval_number (int ) ;

__attribute__((used)) static HRESULT Array_get_length(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    TRACE("%p\n", jsthis);

    *r = jsval_number(array_from_jsdisp(jsthis)->length);
    return S_OK;
}
