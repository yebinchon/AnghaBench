
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;
typedef int DateInstance ;


 int JS_E_DATE_EXPECTED ;
 int TRACE (char*) ;
 int * date_this (int *) ;
 int dateobj_to_string (int *,int *) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Date_toString(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    DateInstance *date;

    TRACE("\n");

    if(!(date = date_this(jsthis)))
        return throw_type_error(ctx, JS_E_DATE_EXPECTED, ((void*)0));

    return dateobj_to_string(date, r);
}
