#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  time; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DateInstance ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_DATE_EXPECTED ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
#define  LOCALE_SABBREVDAYNAME1 146 
#define  LOCALE_SABBREVDAYNAME2 145 
#define  LOCALE_SABBREVDAYNAME3 144 
#define  LOCALE_SABBREVDAYNAME4 143 
#define  LOCALE_SABBREVDAYNAME5 142 
#define  LOCALE_SABBREVDAYNAME6 141 
#define  LOCALE_SABBREVDAYNAME7 140 
#define  LOCALE_SABBREVMONTHNAME1 139 
#define  LOCALE_SABBREVMONTHNAME10 138 
#define  LOCALE_SABBREVMONTHNAME11 137 
#define  LOCALE_SABBREVMONTHNAME12 136 
#define  LOCALE_SABBREVMONTHNAME2 135 
#define  LOCALE_SABBREVMONTHNAME3 134 
#define  LOCALE_SABBREVMONTHNAME4 133 
#define  LOCALE_SABBREVMONTHNAME5 132 
#define  LOCALE_SABBREVMONTHNAME6 131 
#define  LOCALE_SABBREVMONTHNAME7 130 
#define  LOCALE_SABBREVMONTHNAME8 129 
#define  LOCALE_SABBREVMONTHNAME9 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ TRUE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,char*,int,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline HRESULT FUNC18(script_ctx_t *ctx, vdisp_t *jsthis, jsval_t *r)
{
    static const WCHAR formatADW[] = { '%','s',',',' ','%','d',' ','%','s',' ','%','d',' ',
        '%','0','2','d',':','%','0','2','d',':','%','0','2','d',' ','U','T','C',0 };
    static const WCHAR formatBCW[] = { '%','s',',',' ','%','d',' ','%','s',' ','%','d',' ','B','.','C','.',' ',
        '%','0','2','d',':','%','0','2','d',':','%','0','2','d',' ','U','T','C',0 };

    static const DWORD week_ids[] = { LOCALE_SABBREVDAYNAME7, LOCALE_SABBREVDAYNAME1,
        LOCALE_SABBREVDAYNAME2, LOCALE_SABBREVDAYNAME3, LOCALE_SABBREVDAYNAME4,
        LOCALE_SABBREVDAYNAME5, LOCALE_SABBREVDAYNAME6 };
    static const DWORD month_ids[] = { LOCALE_SABBREVMONTHNAME1, LOCALE_SABBREVMONTHNAME2,
        LOCALE_SABBREVMONTHNAME3, LOCALE_SABBREVMONTHNAME4,
        LOCALE_SABBREVMONTHNAME5, LOCALE_SABBREVMONTHNAME6,
        LOCALE_SABBREVMONTHNAME7, LOCALE_SABBREVMONTHNAME8,
        LOCALE_SABBREVMONTHNAME9, LOCALE_SABBREVMONTHNAME10,
        LOCALE_SABBREVMONTHNAME11, LOCALE_SABBREVMONTHNAME12 };

    BOOL formatAD = TRUE;
    WCHAR week[64], month[64];
    WCHAR buf[192];
    DateInstance *date;
    jsstr_t *date_str;
    int year, day;
    DWORD lcid_en;

    if(!(date = FUNC5(jsthis)))
        return FUNC15(ctx, JS_E_DATE_EXPECTED, NULL);

    if(FUNC7(date->time)) {
        if(r)
            *r = FUNC10(FUNC9());
        return S_OK;
    }

    if(r) {
        lcid_en = FUNC3(FUNC2(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

        week[0] = 0;
        FUNC1(lcid_en, week_ids[(int)FUNC16(date->time)], week, FUNC0(week));

        month[0] = 0;
        FUNC1(lcid_en, month_ids[(int)FUNC12(date->time)], month, FUNC0(month));

        year = FUNC17(date->time);
        if(year<0) {
            formatAD = FALSE;
            year = -year+1;
        }

        day = FUNC4(date->time);

        FUNC14(buf, formatAD ? formatADW : formatBCW, week, day, month, year,
                (int)FUNC6(date->time), (int)FUNC11(date->time),
                (int)FUNC13(date->time));

        date_str = FUNC8(buf);
        if(!date_str)
            return E_OUTOFMEMORY;

        *r = FUNC10(date_str);
    }
    return S_OK;
}