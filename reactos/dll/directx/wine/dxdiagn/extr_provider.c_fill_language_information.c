
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IDxDiagContainerImpl_Container ;
typedef int HRESULT ;


 int ARRAY_SIZE (char*) ;
 scalar_t__ FAILED (int ) ;
 int GetLocaleInfoW (int ,int ,char*,int ) ;
 int IDS_REGIONAL_SETTING ;
 int LOCALE_SENGLANGUAGE ;
 int LOCALE_SNATIVELANGNAME ;
 int LOCALE_SYSTEM_DEFAULT ;
 int LOCALE_USER_DEFAULT ;
 int LoadStringW (int ,int ,char*,int ) ;
 int S_OK ;
 int add_bstr_property (int *,char const*,char*) ;
 int dxdiagn_instance ;
 int swprintf (char*,char const*,char*,char const*,char*) ;

__attribute__((used)) static HRESULT fill_language_information(IDxDiagContainerImpl_Container *node)
{
    static const WCHAR regional_setting_engW[] = {'R','e','g','i','o','n','a','l',' ','S','e','t','t','i','n','g',0};
    static const WCHAR languages_fmtW[] = {'%','s',' ','(','%','s',':',' ','%','s',')',0};
    static const WCHAR szLanguagesLocalized[] = {'s','z','L','a','n','g','u','a','g','e','s','L','o','c','a','l','i','z','e','d',0};
    static const WCHAR szLanguagesEnglish[] = {'s','z','L','a','n','g','u','a','g','e','s','E','n','g','l','i','s','h',0};

    WCHAR system_lang[80], regional_setting[100], user_lang[80], language_str[300];
    HRESULT hr;


    GetLocaleInfoW(LOCALE_SYSTEM_DEFAULT, LOCALE_SNATIVELANGNAME, system_lang, ARRAY_SIZE(system_lang));
    LoadStringW(dxdiagn_instance, IDS_REGIONAL_SETTING, regional_setting, ARRAY_SIZE(regional_setting));
    GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_SNATIVELANGNAME, user_lang, ARRAY_SIZE(user_lang));

    swprintf(language_str, languages_fmtW, system_lang, regional_setting,
              user_lang);

    hr = add_bstr_property(node, szLanguagesLocalized, language_str);
    if (FAILED(hr))
        return hr;


    GetLocaleInfoW(LOCALE_SYSTEM_DEFAULT, LOCALE_SENGLANGUAGE, system_lang, ARRAY_SIZE(system_lang));
    GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_SENGLANGUAGE, user_lang, ARRAY_SIZE(user_lang));

    swprintf(language_str, languages_fmtW, system_lang,
              regional_setting_engW, user_lang);

    hr = add_bstr_property(node, szLanguagesEnglish, language_str);
    if (FAILED(hr))
        return hr;

    return S_OK;
}
