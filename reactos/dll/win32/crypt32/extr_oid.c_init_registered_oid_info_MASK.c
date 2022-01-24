#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cbData; } ;
struct TYPE_4__ {int /*<<< orphan*/  Algid; } ;
struct TYPE_6__ {int /*<<< orphan*/  pwszCNGExtraAlgid; int /*<<< orphan*/  pwszCNGAlgid; TYPE_2__ ExtraInfo; TYPE_1__ u; int /*<<< orphan*/  dwGroupId; int /*<<< orphan*/  pwszName; int /*<<< orphan*/  pszOID; } ;
struct OIDInfo {int /*<<< orphan*/  entry; TYPE_3__ info; } ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ CRYPT_INSTALL_OID_INFO_BEFORE_FLAG ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  oidInfo ; 
 struct OIDInfo* FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 

__attribute__((used)) static void FUNC9(void)
{
    DWORD err, idx;
    HKEY root;

    err = FUNC2(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Cryptography\\OID\\EncodingType 0\\CryptDllFindOIDInfo",
                        0, KEY_ALL_ACCESS, &root);
    if (err != ERROR_SUCCESS) return;

    idx = 0;
    for (;;)
    {
        char key_name[MAX_PATH];
        struct OIDInfo *info;
        DWORD flags;

        err = FUNC1(root, idx++, key_name, MAX_PATH);
        if (err == ERROR_NO_MORE_ITEMS)
            break;

        if (err == ERROR_SUCCESS)
        {
            if ((info = FUNC8(root, key_name, &flags)))
            {
                FUNC3("adding oid %s, name %s, groupid %u, algid %u, extra %u, CNG algid %s, CNG extra %s\n",
                      FUNC4(info->info.pszOID), FUNC5(info->info.pwszName),
                      info->info.dwGroupId, info->info.u.Algid, info->info.ExtraInfo.cbData,
                      FUNC5(info->info.pwszCNGAlgid), FUNC5(info->info.pwszCNGExtraAlgid));

                if (flags & CRYPT_INSTALL_OID_INFO_BEFORE_FLAG)
                    FUNC6(&oidInfo, &info->entry);
                else
                    FUNC7(&oidInfo, &info->entry);
            }
        }
    }

    FUNC0(root);
}