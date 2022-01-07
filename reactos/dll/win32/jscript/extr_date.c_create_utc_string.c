
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef char WCHAR ;
struct TYPE_3__ {int time; } ;
typedef int HRESULT ;
typedef TYPE_1__ DateInstance ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (char*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int GetLocaleInfoW (int ,int const,char*,int ) ;
 int JS_E_DATE_EXPECTED ;
 int LANG_ENGLISH ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int S_OK ;
 scalar_t__ TRUE ;
 int date_from_time (int ) ;
 TYPE_1__* date_this (int *) ;
 scalar_t__ hour_from_time (int ) ;
 scalar_t__ isnan (int ) ;
 int * jsstr_alloc (char*) ;
 int * jsstr_nan () ;
 int jsval_string (int *) ;
 scalar_t__ min_from_time (int ) ;
 scalar_t__ month_from_time (int ) ;
 scalar_t__ sec_from_time (int ) ;
 int swprintf (char*,char const*,char*,int,char*,int,int,int,int) ;
 int throw_type_error (int *,int ,int *) ;
 scalar_t__ week_day (int ) ;
 int year_from_time (int ) ;

__attribute__((used)) static inline HRESULT create_utc_string(script_ctx_t *ctx, vdisp_t *jsthis, jsval_t *r)
{
    static const WCHAR formatADW[] = { '%','s',',',' ','%','d',' ','%','s',' ','%','d',' ',
        '%','0','2','d',':','%','0','2','d',':','%','0','2','d',' ','U','T','C',0 };
    static const WCHAR formatBCW[] = { '%','s',',',' ','%','d',' ','%','s',' ','%','d',' ','B','.','C','.',' ',
        '%','0','2','d',':','%','0','2','d',':','%','0','2','d',' ','U','T','C',0 };

    static const DWORD week_ids[] = { 140, 146,
        145, 144, 143,
        142, 141 };
    static const DWORD month_ids[] = { 139, 135,
        134, 133,
        132, 131,
        130, 129,
        128, 138,
        137, 136 };

    BOOL formatAD = TRUE;
    WCHAR week[64], month[64];
    WCHAR buf[192];
    DateInstance *date;
    jsstr_t *date_str;
    int year, day;
    DWORD lcid_en;

    if(!(date = date_this(jsthis)))
        return throw_type_error(ctx, JS_E_DATE_EXPECTED, ((void*)0));

    if(isnan(date->time)) {
        if(r)
            *r = jsval_string(jsstr_nan());
        return S_OK;
    }

    if(r) {
        lcid_en = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

        week[0] = 0;
        GetLocaleInfoW(lcid_en, week_ids[(int)week_day(date->time)], week, ARRAY_SIZE(week));

        month[0] = 0;
        GetLocaleInfoW(lcid_en, month_ids[(int)month_from_time(date->time)], month, ARRAY_SIZE(month));

        year = year_from_time(date->time);
        if(year<0) {
            formatAD = FALSE;
            year = -year+1;
        }

        day = date_from_time(date->time);

        swprintf(buf, formatAD ? formatADW : formatBCW, week, day, month, year,
                (int)hour_from_time(date->time), (int)min_from_time(date->time),
                (int)sec_from_time(date->time));

        date_str = jsstr_alloc(buf);
        if(!date_str)
            return E_OUTOFMEMORY;

        *r = jsval_string(date_str);
    }
    return S_OK;
}
