
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_11__ {int lcid; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_13__ {int time; } ;
struct TYPE_12__ {int wYear; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef int HRESULT ;
typedef TYPE_3__ DateInstance ;


 int Date_toTimeString (TYPE_1__*,int *,int ,unsigned int,int *,int *) ;
 int E_OUTOFMEMORY ;
 int GetTimeFormatW (int ,int ,TYPE_2__*,int *,int *,int) ;
 int JS_E_DATE_EXPECTED ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_2__ create_systemtime (int ) ;
 TYPE_3__* date_this (int *) ;
 scalar_t__ isnan (int ) ;
 int * jsstr_alloc_buf (int,int **) ;
 int * jsstr_nan () ;
 int jsval_string (int *) ;
 int local_time (int ,TYPE_3__*) ;
 int throw_type_error (TYPE_1__*,int ,int *) ;

__attribute__((used)) static HRESULT Date_toLocaleTimeString(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    SYSTEMTIME st;
    DateInstance *date;
    jsstr_t *date_str;
    int len;

    TRACE("\n");

    if(!(date = date_this(jsthis)))
        return throw_type_error(ctx, JS_E_DATE_EXPECTED, ((void*)0));

    if(isnan(date->time)) {
        if(r)
            *r = jsval_string(jsstr_nan());
        return S_OK;
    }

    st = create_systemtime(local_time(date->time, date));

    if(st.wYear<1601 || st.wYear>9999)
        return Date_toTimeString(ctx, jsthis, flags, argc, argv, r);

    if(r) {
        WCHAR *ptr;

        len = GetTimeFormatW(ctx->lcid, 0, &st, ((void*)0), ((void*)0), 0);
        date_str = jsstr_alloc_buf(len-1, &ptr);
        if(!date_str)
            return E_OUTOFMEMORY;
        GetTimeFormatW(ctx->lcid, 0, &st, ((void*)0), ptr, len);

        *r = jsval_string(date_str);
    }
    return S_OK;
}
