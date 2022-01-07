
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int make_date (int ,int ) ;
 int make_day (double,double,double) ;
 int make_time (double,double,double,double) ;
 double time_clip (int ) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static HRESULT date_utc(script_ctx_t *ctx, unsigned argc, jsval_t *argv, double *ret)
{
    double year, month, vdate, hours, minutes, seconds, ms;
    HRESULT hres;

    TRACE("\n");

    if(argc) {
        hres = to_number(ctx, argv[0], &year);
        if(FAILED(hres))
            return hres;
        if(0 <= year && year <= 99)
            year += 1900;
    }else {
        year = 1900;
    }

    if(argc>1) {
        hres = to_number(ctx, argv[1], &month);
        if(FAILED(hres))
            return hres;
    }else {
        month = 0;
    }

    if(argc>2) {
        hres = to_number(ctx, argv[2], &vdate);
        if(FAILED(hres))
            return hres;
    }else {
        vdate = 1;
    }

    if(argc>3) {
        hres = to_number(ctx, argv[3], &hours);
        if(FAILED(hres))
            return hres;
    }else {
        hours = 0;
    }

    if(argc>4) {
        hres = to_number(ctx, argv[4], &minutes);
        if(FAILED(hres))
            return hres;
    }else {
        minutes = 0;
    }

    if(argc>5) {
        hres = to_number(ctx, argv[5], &seconds);
        if(FAILED(hres))
            return hres;
    }else {
        seconds = 0;
    }

    if(argc>6) {
        hres = to_number(ctx, argv[6], &ms);
        if(FAILED(hres))
            return hres;
    } else {
        ms = 0;
    }

    *ret = time_clip(make_date(make_day(year, month, vdate),
            make_time(hours, minutes,seconds, ms)));
    return S_OK;
}
