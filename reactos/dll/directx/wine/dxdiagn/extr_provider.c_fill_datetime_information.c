
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int SYSTEMTIME ;
typedef int IDxDiagContainerImpl_Container ;
typedef int HRESULT ;


 int ARRAY_SIZE (char*) ;
 int DATE_LONGDATE ;
 scalar_t__ FAILED (int ) ;
 int GetDateFormatW (int ,int ,int *,char const*,char*,int ) ;
 int GetLocalTime (int *) ;
 int GetTimeFormatW (int ,int ,int *,char const*,char*,int ) ;
 int LOCALE_NEUTRAL ;
 int LOCALE_USER_DEFAULT ;
 int S_OK ;
 int add_bstr_property (int *,char const*,char*) ;
 int swprintf (char*,char const*,char*,char*) ;

__attribute__((used)) static HRESULT fill_datetime_information(IDxDiagContainerImpl_Container *node)
{
    static const WCHAR date_fmtW[] = {'M','\'','/','\'','d','\'','/','\'','y','y','y','y',0};
    static const WCHAR time_fmtW[] = {'H','H','\'',':','\'','m','m','\'',':','\'','s','s',0};
    static const WCHAR datetime_fmtW[] = {'%','s',',',' ','%','s',0};
    static const WCHAR szTimeLocalized[] = {'s','z','T','i','m','e','L','o','c','a','l','i','z','e','d',0};
    static const WCHAR szTimeEnglish[] = {'s','z','T','i','m','e','E','n','g','l','i','s','h',0};

    SYSTEMTIME curtime;
    WCHAR date_str[80], time_str[80], datetime_str[200];
    HRESULT hr;

    GetLocalTime(&curtime);

    GetTimeFormatW(LOCALE_NEUTRAL, 0, &curtime, time_fmtW, time_str, ARRAY_SIZE(time_str));


    GetDateFormatW(LOCALE_USER_DEFAULT, DATE_LONGDATE, &curtime, ((void*)0), date_str, ARRAY_SIZE(date_str));

    swprintf(datetime_str, datetime_fmtW, date_str, time_str);

    hr = add_bstr_property(node, szTimeLocalized, datetime_str);
    if (FAILED(hr))
        return hr;


    GetDateFormatW(LOCALE_NEUTRAL, 0, &curtime, date_fmtW, date_str, ARRAY_SIZE(date_str));

    swprintf(datetime_str, datetime_fmtW, date_str, time_str);

    hr = add_bstr_property(node, szTimeEnglish, datetime_str);
    if (FAILED(hr))
        return hr;

    return S_OK;
}
