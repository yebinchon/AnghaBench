
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsval_t ;
typedef int jsstr_t ;
typedef char WCHAR ;
struct TYPE_4__ {int time; } ;
typedef int HRESULT ;
typedef TYPE_1__ DateInstance ;
typedef int DWORD ;
typedef int DOUBLE ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (char*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int GetLocaleInfoW (int ,int const,char*,int ) ;
 int LANG_ENGLISH ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int S_OK ;
 scalar_t__ TRUE ;
 int date_from_time (int ) ;
 scalar_t__ isnan (int ) ;
 int * jsstr_alloc (char*) ;
 int * jsstr_nan () ;
 int jsval_string (int *) ;
 int local_time (int ,TYPE_1__*) ;
 scalar_t__ month_from_time (int ) ;
 int swprintf (char*,char const*,char*,char*,int,int) ;
 scalar_t__ week_day (int ) ;
 int year_from_time (int ) ;

__attribute__((used)) static HRESULT dateobj_to_date_string(DateInstance *date, jsval_t *r)
{
    static const WCHAR formatADW[] = { '%','s',' ','%','s',' ','%','d',' ','%','d',0 };
    static const WCHAR formatBCW[] = { '%','s',' ','%','s',' ','%','d',' ','%','d',' ','B','.','C','.',0 };

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
    jsstr_t *date_str;
    DOUBLE time;
    int year, day;
    DWORD lcid_en;

    if(isnan(date->time)) {
        if(r)
            *r = jsval_string(jsstr_nan());
        return S_OK;
    }

    time = local_time(date->time, date);

    if(r) {
        lcid_en = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

        week[0] = 0;
        GetLocaleInfoW(lcid_en, week_ids[(int)week_day(time)], week, ARRAY_SIZE(week));

        month[0] = 0;
        GetLocaleInfoW(lcid_en, month_ids[(int)month_from_time(time)], month, ARRAY_SIZE(month));

        year = year_from_time(time);
        if(year<0) {
            formatAD = FALSE;
            year = -year+1;
        }

        day = date_from_time(time);

        swprintf(buf, formatAD ? formatADW : formatBCW, week, month, day, year);

        date_str = jsstr_alloc(buf);
        if(!date_str)
            return E_OUTOFMEMORY;

        *r = jsval_string(date_str);
    }
    return S_OK;
}
