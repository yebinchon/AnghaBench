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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static
DWORD
FUNC12(
    HKEY hSrcKey,
    HKEY hDstKey)
{
    DWORD dwSubKeys;
    DWORD dwValues;
    DWORD dwType;
    DWORD dwMaxSubKeyNameLength;
    DWORD dwSubKeyNameLength;
    DWORD dwMaxValueNameLength;
    DWORD dwValueNameLength;
    DWORD dwMaxValueLength;
    DWORD dwValueLength;
    DWORD dwDisposition;
    DWORD i;
    LPWSTR lpNameBuffer;
    LPBYTE lpDataBuffer;
    HKEY hDstSubKey;
    HKEY hSrcSubKey;
    DWORD dwError;

    FUNC0("ScmCopyTree()\n");

    dwError = FUNC10(hSrcKey,
                              NULL,
                              NULL,
                              NULL,
                              &dwSubKeys,
                              &dwMaxSubKeyNameLength,
                              NULL,
                              &dwValues,
                              &dwMaxValueNameLength,
                              &dwMaxValueLength,
                              NULL,
                              NULL);
    if (dwError != ERROR_SUCCESS)
    {
        FUNC1("RegQueryInfoKey() failed (Error %lu)\n", dwError);
        return dwError;
    }

    dwMaxSubKeyNameLength++;
    dwMaxValueNameLength++;

    FUNC0("dwSubKeys %lu\n", dwSubKeys);
    FUNC0("dwMaxSubKeyNameLength %lu\n", dwMaxSubKeyNameLength);
    FUNC0("dwValues %lu\n", dwValues);
    FUNC0("dwMaxValueNameLength %lu\n", dwMaxValueNameLength);
    FUNC0("dwMaxValueLength %lu\n", dwMaxValueLength);

    /* Copy subkeys */
    if (dwSubKeys != 0)
    {
        lpNameBuffer = FUNC3(FUNC2(),
                                 0,
                                 dwMaxSubKeyNameLength * sizeof(WCHAR));
        if (lpNameBuffer == NULL)
        {
            FUNC1("Buffer allocation failed\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }

        for (i = 0; i < dwSubKeys; i++)
        {
            dwSubKeyNameLength = dwMaxSubKeyNameLength;
            dwError = FUNC7(hSrcKey,
                                    i,
                                    lpNameBuffer,
                                    &dwSubKeyNameLength,
                                    NULL,
                                    NULL,
                                    NULL,
                                    NULL);
            if (dwError != ERROR_SUCCESS)
            {
                FUNC1("Subkey enumeration failed (Error %lu)\n", dwError);
                FUNC4(FUNC2(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            dwError = FUNC6(hDstKey,
                                      lpNameBuffer,
                                      0,
                                      NULL,
                                      REG_OPTION_NON_VOLATILE,
                                      KEY_WRITE,
                                      NULL,
                                      &hDstSubKey,
                                      &dwDisposition);
            if (dwError != ERROR_SUCCESS)
            {
                FUNC1("Subkey creation failed (Error %lu)\n", dwError);
                FUNC4(FUNC2(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            dwError = FUNC9(hSrcKey,
                                    lpNameBuffer,
                                    0,
                                    KEY_READ,
                                    &hSrcSubKey);
            if (dwError != ERROR_SUCCESS)
            {
                FUNC1("Error: %lu\n", dwError);
                FUNC5(hDstSubKey);
                FUNC4(FUNC2(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            dwError = FUNC12(hSrcSubKey,
                                  hDstSubKey);
            if (dwError != ERROR_SUCCESS)
            {
                FUNC1("Error: %lu\n", dwError);
                FUNC5 (hSrcSubKey);
                FUNC5 (hDstSubKey);
                FUNC4(FUNC2(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            FUNC5(hSrcSubKey);
            FUNC5(hDstSubKey);
        }

        FUNC4(FUNC2(),
                 0,
                 lpNameBuffer);
    }

    /* Copy values */
    if (dwValues != 0)
    {
        lpNameBuffer = FUNC3(FUNC2(),
                                 0,
                                 dwMaxValueNameLength * sizeof(WCHAR));
        if (lpNameBuffer == NULL)
        {
            FUNC1("Buffer allocation failed\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }

        lpDataBuffer = FUNC3(FUNC2(),
                                 0,
                                 dwMaxValueLength);
        if (lpDataBuffer == NULL)
        {
            FUNC1("Buffer allocation failed\n");
            FUNC4(FUNC2(),
                     0,
                     lpNameBuffer);
            return ERROR_NOT_ENOUGH_MEMORY;
        }

        for (i = 0; i < dwValues; i++)
        {
            dwValueNameLength = dwMaxValueNameLength;
            dwValueLength = dwMaxValueLength;
            dwError = FUNC8(hSrcKey,
                                    i,
                                    lpNameBuffer,
                                    &dwValueNameLength,
                                    NULL,
                                    &dwType,
                                    lpDataBuffer,
                                    &dwValueLength);
            if (dwError != ERROR_SUCCESS)
            {
                FUNC1("Error: %lu\n", dwError);
                FUNC4(FUNC2(),
                         0,
                         lpDataBuffer);
                FUNC4(FUNC2(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            dwError = FUNC11(hDstKey,
                                     lpNameBuffer,
                                     0,
                                     dwType,
                                     lpDataBuffer,
                                     dwValueLength);
            if (dwError != ERROR_SUCCESS)
            {
                FUNC1("Error: %lu\n", dwError);
                FUNC4(FUNC2(),
                         0,
                         lpDataBuffer);
                FUNC4(FUNC2(),
                         0,
                         lpNameBuffer);
                return dwError;
            }
        }

        FUNC4(FUNC2(),
                 0,
                 lpDataBuffer);

        FUNC4(FUNC2(),
                 0,
                 lpNameBuffer);
    }

    FUNC0("ScmCopyTree() done \n");

    return ERROR_SUCCESS;
}