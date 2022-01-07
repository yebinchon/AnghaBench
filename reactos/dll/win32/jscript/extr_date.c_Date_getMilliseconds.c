
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_4__ {int time; } ;
typedef int HRESULT ;
typedef TYPE_1__ DateInstance ;


 int JS_E_DATE_EXPECTED ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_1__* date_this (int *) ;
 int jsval_number (int ) ;
 int local_time (int ,TYPE_1__*) ;
 int ms_from_time (int ) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Date_getMilliseconds(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;

    TRACE("\n");

    if(!(date = date_this(jsthis)))
        return throw_type_error(ctx, JS_E_DATE_EXPECTED, ((void*)0));

    if(r)
        *r = jsval_number(ms_from_time(local_time(date->time, date)));
    return S_OK;
}
