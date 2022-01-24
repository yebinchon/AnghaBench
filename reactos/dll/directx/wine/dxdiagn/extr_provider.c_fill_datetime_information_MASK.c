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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  int /*<<< orphan*/  IDxDiagContainerImpl_Container ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DATE_LONGDATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char*,char*) ; 

__attribute__((used)) static HRESULT FUNC7(IDxDiagContainerImpl_Container *node)
{
    static const WCHAR date_fmtW[] = {'M','\'','/','\'','d','\'','/','\'','y','y','y','y',0};
    static const WCHAR time_fmtW[] = {'H','H','\'',':','\'','m','m','\'',':','\'','s','s',0};
    static const WCHAR datetime_fmtW[] = {'%','s',',',' ','%','s',0};
    static const WCHAR szTimeLocalized[] = {'s','z','T','i','m','e','L','o','c','a','l','i','z','e','d',0};
    static const WCHAR szTimeEnglish[] = {'s','z','T','i','m','e','E','n','g','l','i','s','h',0};

    SYSTEMTIME curtime;
    WCHAR date_str[80], time_str[80], datetime_str[200];
    HRESULT hr;

    FUNC3(&curtime);

    FUNC4(LOCALE_NEUTRAL, 0, &curtime, time_fmtW, time_str, FUNC0(time_str));

    /* szTimeLocalized */
    FUNC2(LOCALE_USER_DEFAULT, DATE_LONGDATE, &curtime, NULL, date_str, FUNC0(date_str));

    FUNC6(datetime_str, datetime_fmtW, date_str, time_str);

    hr = FUNC5(node, szTimeLocalized, datetime_str);
    if (FUNC1(hr))
        return hr;

    /* szTimeEnglish */
    FUNC2(LOCALE_NEUTRAL, 0, &curtime, date_fmtW, date_str, FUNC0(date_str));

    FUNC6(datetime_str, datetime_fmtW, date_str, time_str);

    hr = FUNC5(node, szTimeEnglish, datetime_str);
    if (FUNC1(hr))
        return hr;

    return S_OK;
}