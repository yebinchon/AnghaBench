
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_5__ {double time; } ;
typedef int HRESULT ;
typedef TYPE_1__ DateInstance ;
typedef double DOUBLE ;


 scalar_t__ FAILED (int ) ;
 int JS_E_DATE_EXPECTED ;
 int JS_E_MISSING_ARG ;
 double NAN ;
 int S_OK ;
 int TRACE (char*) ;
 int date_from_time (double) ;
 TYPE_1__* date_this (int *) ;
 double floor (double) ;
 scalar_t__ isnan (double) ;
 int jsval_number (double) ;
 double local_time (double,TYPE_1__*) ;
 int make_date (int ,int ) ;
 int make_day (double,int ,int ) ;
 int month_from_time (double) ;
 int throw_type_error (int *,int ,int *) ;
 double time_clip (int ) ;
 int time_within_day (double) ;
 int to_number (int *,int ,double*) ;
 int utc (int ,TYPE_1__*) ;

__attribute__((used)) static HRESULT Date_setYear(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;
    DOUBLE t, year;
    HRESULT hres;

    TRACE("\n");

    if(!(date = date_this(jsthis)))
        return throw_type_error(ctx, JS_E_DATE_EXPECTED, ((void*)0));

    if(!argc)
        return throw_type_error(ctx, JS_E_MISSING_ARG, ((void*)0));

    t = local_time(date->time, date);

    hres = to_number(ctx, argv[0], &year);
    if(FAILED(hres))
        return hres;

    if(isnan(year)) {
        date->time = year;
        if(r)
            *r = jsval_number(NAN);
        return S_OK;
    }

    year = year >= 0.0 ? floor(year) : -floor(-year);
    if(-1.0 < year && year < 100.0)
        year += 1900.0;

    date->time = time_clip(utc(make_date(make_day(year, month_from_time(t), date_from_time(t)), time_within_day(t)), date));

    if(r)
        *r = jsval_number(date->time);
    return S_OK;
}
