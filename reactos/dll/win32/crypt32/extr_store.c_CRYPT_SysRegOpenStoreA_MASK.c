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
typedef  int /*<<< orphan*/  WINECRYPT_CERTSTORE ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void const*) ; 

__attribute__((used)) static WINECRYPT_CERTSTORE *FUNC7(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    int len;
    WINECRYPT_CERTSTORE *ret = NULL;

    FUNC5("(%ld, %08x, %s)\n", hCryptProv, dwFlags,
     FUNC6(pvPara));

    if (!pvPara)
    {
        FUNC4(ERROR_FILE_NOT_FOUND);
        return NULL;
    }
    len = FUNC3(CP_ACP, 0, pvPara, -1, NULL, 0);
    if (len)
    {
        LPWSTR storeName = FUNC1(len * sizeof(WCHAR));

        if (storeName)
        {
            FUNC3(CP_ACP, 0, pvPara, -1, storeName, len);
            ret = FUNC0(hCryptProv, dwFlags, storeName);
            FUNC2(storeName);
        }
    }
    return ret;
}