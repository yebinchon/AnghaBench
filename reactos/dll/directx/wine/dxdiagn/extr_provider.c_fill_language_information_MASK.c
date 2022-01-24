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
typedef  int /*<<< orphan*/  IDxDiagContainerImpl_Container ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_REGIONAL_SETTING ; 
 int /*<<< orphan*/  LOCALE_SENGLANGUAGE ; 
 int /*<<< orphan*/  LOCALE_SNATIVELANGNAME ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  dxdiagn_instance ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char*,char const*,char*) ; 

__attribute__((used)) static HRESULT FUNC6(IDxDiagContainerImpl_Container *node)
{
    static const WCHAR regional_setting_engW[] = {'R','e','g','i','o','n','a','l',' ','S','e','t','t','i','n','g',0};
    static const WCHAR languages_fmtW[] = {'%','s',' ','(','%','s',':',' ','%','s',')',0};
    static const WCHAR szLanguagesLocalized[] = {'s','z','L','a','n','g','u','a','g','e','s','L','o','c','a','l','i','z','e','d',0};
    static const WCHAR szLanguagesEnglish[] = {'s','z','L','a','n','g','u','a','g','e','s','E','n','g','l','i','s','h',0};

    WCHAR system_lang[80], regional_setting[100], user_lang[80], language_str[300];
    HRESULT hr;

    /* szLanguagesLocalized */
    FUNC2(LOCALE_SYSTEM_DEFAULT, LOCALE_SNATIVELANGNAME, system_lang, FUNC0(system_lang));
    FUNC3(dxdiagn_instance, IDS_REGIONAL_SETTING, regional_setting, FUNC0(regional_setting));
    FUNC2(LOCALE_USER_DEFAULT, LOCALE_SNATIVELANGNAME, user_lang, FUNC0(user_lang));

    FUNC5(language_str, languages_fmtW, system_lang, regional_setting,
              user_lang);

    hr = FUNC4(node, szLanguagesLocalized, language_str);
    if (FUNC1(hr))
        return hr;

    /* szLanguagesEnglish */
    FUNC2(LOCALE_SYSTEM_DEFAULT, LOCALE_SENGLANGUAGE, system_lang, FUNC0(system_lang));
    FUNC2(LOCALE_USER_DEFAULT, LOCALE_SENGLANGUAGE, user_lang, FUNC0(user_lang));

    FUNC5(language_str, languages_fmtW, system_lang,
              regional_setting_engW, user_lang);

    hr = FUNC4(node, szLanguagesEnglish, language_str);
    if (FUNC1(hr))
        return hr;

    return S_OK;
}