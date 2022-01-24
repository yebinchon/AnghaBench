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
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  szStub; int /*<<< orphan*/  szLocale; int /*<<< orphan*/  szGUID; int /*<<< orphan*/  szCompID; scalar_t__ dwIsInstalled; int /*<<< orphan*/  szVersion; int /*<<< orphan*/  szDispName; int /*<<< orphan*/  bRollback; } ;
typedef  int /*<<< orphan*/  PINT ;
typedef  TYPE_1__ PERUSERSECTIONW ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(HINF hinf, PCWSTR field, const void *arg)
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

    FUNC4(NULL, hinf, field, disp_name, per_user.szDispName, FUNC0(per_user.szDispName), &size);

    FUNC4(NULL, hinf, field, version, per_user.szVersion, FUNC0(per_user.szVersion), &size);

    if (FUNC2(hinf, field, is_installed, &context))
    {
        FUNC3(&context, 1, (PINT)&per_user.dwIsInstalled);
    }

    FUNC4(NULL, hinf, field, comp_id, per_user.szCompID, FUNC0(per_user.szCompID), &size);

    FUNC4(NULL, hinf, field, guid, per_user.szGUID, FUNC0(per_user.szGUID), &size);

    FUNC4(NULL, hinf, field, locale, per_user.szLocale, FUNC0(per_user.szLocale), &size);

    FUNC4(NULL, hinf, field, stub_path, per_user.szStub, FUNC0(per_user.szStub), &size);

    return FUNC1(&per_user);
}