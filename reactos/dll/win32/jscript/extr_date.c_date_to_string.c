
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsstr_t ;
typedef char WCHAR ;
typedef int HRESULT ;
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
 scalar_t__ hour_from_time (int ) ;
 scalar_t__ isnan (int ) ;
 int * jsstr_alloc (char*) ;
 int * jsstr_nan () ;
 int jsval_string (int *) ;
 scalar_t__ min_from_time (int ) ;
 scalar_t__ month_from_time (int ) ;
 scalar_t__ sec_from_time (int ) ;
 int swprintf (char*,char const*,char*,char*,int,int,int,int,int,...) ;
 scalar_t__ week_day (int ) ;
 int year_from_time (int ) ;

__attribute__((used)) static inline HRESULT date_to_string(DOUBLE time, BOOL show_offset, int offset, jsval_t *r)
{
    static const WCHAR formatW[] = { '%','s',' ','%','s',' ','%','d',' ',
        '%','0','2','d',':','%','0','2','d',':','%','0','2','d',' ',
        'U','T','C','%','c','%','0','2','d','%','0','2','d',' ','%','d','%','s',0 };
    static const WCHAR formatUTCW[] = { '%','s',' ','%','s',' ','%','d',' ',
        '%','0','2','d',':','%','0','2','d',':','%','0','2','d',' ',
        'U','T','C',' ','%','d','%','s',0 };
    static const WCHAR formatNoOffsetW[] = { '%','s',' ','%','s',' ',
        '%','d',' ','%','0','2','d',':','%','0','2','d',':',
        '%','0','2','d',' ','%','d','%','s',0 };
    static const WCHAR ADW[] = { 0 };
    static const WCHAR BCW[] = { ' ','B','.','C','.',0 };

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
    jsstr_t *date_jsstr;
    int year, day;
    DWORD lcid_en;
    WCHAR sign = '-';

    if(isnan(time)) {
        if(r)
            *r = jsval_string(jsstr_nan());
        return S_OK;
    }

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

        if(offset < 0) {
            sign = '+';
            offset = -offset;
        }

        if(!show_offset)
            swprintf(buf, formatNoOffsetW, week, month, day,
                    (int)hour_from_time(time), (int)min_from_time(time),
                    (int)sec_from_time(time), year, formatAD?ADW:BCW);
        else if(offset)
            swprintf(buf, formatW, week, month, day,
                    (int)hour_from_time(time), (int)min_from_time(time),
                    (int)sec_from_time(time), sign, offset/60, offset%60,
                    year, formatAD?ADW:BCW);
        else
            swprintf(buf, formatUTCW, week, month, day,
                    (int)hour_from_time(time), (int)min_from_time(time),
                    (int)sec_from_time(time), year, formatAD?ADW:BCW);

        date_jsstr = jsstr_alloc(buf);
        if(!date_jsstr)
            return E_OUTOFMEMORY;

        *r = jsval_string(date_jsstr);
    }
    return S_OK;
}
