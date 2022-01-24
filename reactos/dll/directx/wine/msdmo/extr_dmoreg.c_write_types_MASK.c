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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  TYPE_1__ DMO_PARTIAL_MEDIATYPE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int MSDMO_MAJOR_VERSION ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static HRESULT FUNC5(HKEY hkey, LPCWSTR name, const DMO_PARTIAL_MEDIATYPE* types, DWORD count)
{
    LONG ret;

    if (MSDMO_MAJOR_VERSION > 5)
    {
        ret = FUNC4(hkey, name, 0, REG_BINARY, (const BYTE*) types,
                          count* sizeof(DMO_PARTIAL_MEDIATYPE));
    }
    else
    {
        HKEY skey1,skey2,skey3;
        DWORD index = 0;
        WCHAR szGuidKey[64];

        ret = FUNC3(hkey, name, 0, NULL, REG_OPTION_NON_VOLATILE,
                               KEY_WRITE, NULL, &skey1, NULL);
        if (ret)
            return FUNC1(ret);

        while (index < count)
        {
            FUNC0(szGuidKey,&types[index].type);
            ret = FUNC3(skey1, szGuidKey, 0, NULL,
                        REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL, &skey2, NULL);
            FUNC0(szGuidKey,&types[index].subtype);
            ret = FUNC3(skey2, szGuidKey, 0, NULL,
                        REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL, &skey3, NULL);
            FUNC2(skey3);
            FUNC2(skey2);
            index ++;
        }
        FUNC2(skey1);
    }

    return FUNC1(ret);
}