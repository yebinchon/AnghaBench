#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  DOUBLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,char*,int /*<<< orphan*/ ) ; 
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
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,char*,char*,int,int,int,int,int,...) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline HRESULT FUNC16(DOUBLE time, BOOL show_offset, int offset, jsval_t *r)
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
    jsstr_t *date_jsstr;
    int year, day;
    DWORD lcid_en;
    WCHAR sign = '-';

    if(FUNC6(time)) {
        if(r)
            *r = FUNC9(FUNC8());
        return S_OK;
    }

    if(r) {
        lcid_en = FUNC3(FUNC2(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

        week[0] = 0;
        FUNC1(lcid_en, week_ids[(int)FUNC14(time)], week, FUNC0(week));

        month[0] = 0;
        FUNC1(lcid_en, month_ids[(int)FUNC11(time)], month, FUNC0(month));

        year = FUNC15(time);
        if(year<0) {
            formatAD = FALSE;
            year = -year+1;
        }

        day = FUNC4(time);

        if(offset < 0) {
            sign = '+';
            offset = -offset;
        }

        if(!show_offset)
            FUNC13(buf, formatNoOffsetW, week, month, day,
                    (int)FUNC5(time), (int)FUNC10(time),
                    (int)FUNC12(time), year, formatAD?ADW:BCW);
        else if(offset)
            FUNC13(buf, formatW, week, month, day,
                    (int)FUNC5(time), (int)FUNC10(time),
                    (int)FUNC12(time), sign, offset/60, offset%60,
                    year, formatAD?ADW:BCW);
        else
            FUNC13(buf, formatUTCW, week, month, day,
                    (int)FUNC5(time), (int)FUNC10(time),
                    (int)FUNC12(time), year, formatAD?ADW:BCW);

        date_jsstr = FUNC7(buf);
        if(!date_jsstr)
            return E_OUTOFMEMORY;

        *r = FUNC9(date_jsstr);
    }
    return S_OK;
}