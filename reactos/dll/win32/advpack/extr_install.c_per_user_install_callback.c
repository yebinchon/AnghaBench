
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int szStub; int szLocale; int szGUID; int szCompID; scalar_t__ dwIsInstalled; int szVersion; int szDispName; int bRollback; } ;
typedef int PINT ;
typedef TYPE_1__ PERUSERSECTIONW ;
typedef int PCWSTR ;
typedef int INFCONTEXT ;
typedef int HRESULT ;
typedef int HINF ;
typedef int DWORD ;


 int ARRAY_SIZE (int ) ;
 int FALSE ;
 int SetPerUserSecValuesW (TYPE_1__*) ;
 scalar_t__ SetupFindFirstLineW (int ,int ,char const*,int *) ;
 int SetupGetIntField (int *,int,int ) ;
 int SetupGetLineTextW (int *,int ,int ,char const*,int ,int ,int *) ;

__attribute__((used)) static HRESULT per_user_install_callback(HINF hinf, PCWSTR field, const void *arg)
{
    PERUSERSECTIONW per_user;
    INFCONTEXT context;
    DWORD size;

    static const WCHAR disp_name[] = {'D','i','s','p','l','a','y','N','a','m','e',0};
    static const WCHAR version[] = {'V','e','r','s','i','o','n',0};
    static const WCHAR is_installed[] = {'I','s','I','n','s','t','a','l','l','e','d',0};
    static const WCHAR comp_id[] = {'C','o','m','p','o','n','e','n','t','I','D',0};
    static const WCHAR guid[] = {'G','U','I','D',0};
    static const WCHAR locale[] = {'L','o','c','a','l','e',0};
    static const WCHAR stub_path[] = {'S','t','u','b','P','a','t','h',0};

    per_user.bRollback = FALSE;
    per_user.dwIsInstalled = 0;

    SetupGetLineTextW(((void*)0), hinf, field, disp_name, per_user.szDispName, ARRAY_SIZE(per_user.szDispName), &size);

    SetupGetLineTextW(((void*)0), hinf, field, version, per_user.szVersion, ARRAY_SIZE(per_user.szVersion), &size);

    if (SetupFindFirstLineW(hinf, field, is_installed, &context))
    {
        SetupGetIntField(&context, 1, (PINT)&per_user.dwIsInstalled);
    }

    SetupGetLineTextW(((void*)0), hinf, field, comp_id, per_user.szCompID, ARRAY_SIZE(per_user.szCompID), &size);

    SetupGetLineTextW(((void*)0), hinf, field, guid, per_user.szGUID, ARRAY_SIZE(per_user.szGUID), &size);

    SetupGetLineTextW(((void*)0), hinf, field, locale, per_user.szLocale, ARRAY_SIZE(per_user.szLocale), &size);

    SetupGetLineTextW(((void*)0), hinf, field, stub_path, per_user.szStub, ARRAY_SIZE(per_user.szStub), &size);

    return SetPerUserSecValuesW(&per_user);
}
