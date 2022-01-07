
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 int TRACE (char*) ;
 int date_from_jsdisp (int *) ;
 int dateobj_to_string (int ,int *) ;

__attribute__((used)) static HRESULT Date_get_value(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    TRACE("\n");

    return dateobj_to_string(date_from_jsdisp(jsthis), r);
}
