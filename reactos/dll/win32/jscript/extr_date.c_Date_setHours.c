
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_5__ {int time; } ;
typedef int HRESULT ;
typedef TYPE_1__ DateInstance ;


 scalar_t__ FAILED (int ) ;
 int JS_E_DATE_EXPECTED ;
 int JS_E_MISSING_ARG ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_1__* date_this (int *) ;
 int day (double) ;
 int jsval_number (int ) ;
 double local_time (int ,TYPE_1__*) ;
 double make_date (int ,int ) ;
 int make_time (double,double,double,double) ;
 double min_from_time (double) ;
 double ms_from_time (double) ;
 double sec_from_time (double) ;
 int throw_type_error (int *,int ,int *) ;
 int time_clip (int ) ;
 int to_number (int *,int ,double*) ;
 int utc (double,TYPE_1__*) ;

__attribute__((used)) static HRESULT Date_setHours(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;
    double t, hour, min, sec, ms;
    HRESULT hres;

    TRACE("\n");

    if(!(date = date_this(jsthis)))
        return throw_type_error(ctx, JS_E_DATE_EXPECTED, ((void*)0));

    if(!argc)
        return throw_type_error(ctx, JS_E_MISSING_ARG, ((void*)0));

    t = local_time(date->time, date);

    hres = to_number(ctx, argv[0], &hour);
    if(FAILED(hres))
        return hres;

    if(argc > 1) {
        hres = to_number(ctx, argv[1], &min);
        if(FAILED(hres))
            return hres;
    }else {
        min = min_from_time(t);
    }

    if(argc > 2) {
        hres = to_number(ctx, argv[2], &sec);
        if(FAILED(hres))
            return hres;
    }else {
        sec = sec_from_time(t);
    }

    if(argc > 3) {
        hres = to_number(ctx, argv[3], &ms);
        if(FAILED(hres))
            return hres;
    }else {
        ms = ms_from_time(t);
    }

    t = make_date(day(t), make_time(hour, min, sec, ms));
    date->time = time_clip(utc(t, date));

    if(r)
        *r = jsval_number(date->time);
    return S_OK;
}
