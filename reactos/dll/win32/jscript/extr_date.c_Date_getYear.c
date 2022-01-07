
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
typedef int DOUBLE ;


 int JS_E_DATE_EXPECTED ;
 int NAN ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_1__* date_this (int *) ;
 scalar_t__ isnan (int) ;
 int jsval_number (int) ;
 int local_time (int ,TYPE_1__*) ;
 int throw_type_error (int *,int ,int *) ;
 int year_from_time (int) ;

__attribute__((used)) static HRESULT Date_getYear(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;
    DOUBLE t, year;

    TRACE("\n");

    if(!(date = date_this(jsthis)))
        return throw_type_error(ctx, JS_E_DATE_EXPECTED, ((void*)0));

    t = local_time(date->time, date);
    if(isnan(t)) {
        if(r)
            *r = jsval_number(NAN);
        return S_OK;
    }

    year = year_from_time(t);
    if(r)
        *r = jsval_number((1900<=year && year<2000)?year-1900:year);
    return S_OK;
}
