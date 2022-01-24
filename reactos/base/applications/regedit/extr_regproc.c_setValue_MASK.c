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
typedef  int /*<<< orphan*/  dwData ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INVALID_DATA ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ REG_BINARY ; 
 scalar_t__ REG_DWORD ; 
 scalar_t__ REG_EXPAND_SZ ; 
 scalar_t__ REG_MULTI_SZ ; 
 scalar_t__ REG_SZ ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  currentKeyHandle ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (char**,scalar_t__*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static LONG FUNC13(WCHAR* val_name, WCHAR* val_data, BOOL is_unicode)
{
    LONG res;
    DWORD  dwDataType, dwParseType;
    LPBYTE lpbData;
    DWORD  dwData, dwLen;
    WCHAR del[] = {'-',0};

    if ( (val_name == NULL) || (val_data == NULL) )
        return ERROR_INVALID_PARAMETER;

    if (FUNC11(val_data, del) == 0)
    {
        res=FUNC4(currentKeyHandle,val_name);
        return (res == ERROR_FILE_NOT_FOUND ? ERROR_SUCCESS : res);
    }

    /* Get the data type stored into the value field */
    dwDataType = FUNC10(&val_data, &dwParseType);

    if (dwParseType == REG_SZ)          /* no conversion for string */
    {
        FUNC3(val_data);
        /* Compute dwLen after REGPROC_unescape_string because it may
         * have changed the string length and we don't want to store
         * the extra garbage in the registry.
         */
        dwLen = FUNC12(val_data);
        if(val_data[dwLen-1] != '"')
            return ERROR_INVALID_DATA;
        if (dwLen>0 && val_data[dwLen-1]=='"')
        {
            dwLen--;
            val_data[dwLen]='\0';
        }
        lpbData = (BYTE*) val_data;
        dwLen++;  /* include terminating null */
        dwLen = dwLen * sizeof(WCHAR); /* size is in bytes */
    }
    else if (dwParseType == REG_DWORD)  /* Convert the dword types */
    {
        if (!FUNC7(val_data, &dwData))
            return ERROR_INVALID_DATA;
        lpbData = (BYTE*)&dwData;
        dwLen = sizeof(dwData);
    }
    else if (dwParseType == REG_BINARY) /* Convert the binary data */
    {
        lpbData = FUNC6(val_data, &dwLen);
        if (!lpbData)
            return ERROR_INVALID_DATA;

        if((dwDataType == REG_MULTI_SZ || dwDataType == REG_EXPAND_SZ) && !is_unicode)
        {
            LPBYTE tmp = lpbData;
            lpbData = (LPBYTE)FUNC1((char*)lpbData, dwLen, &dwLen);
            dwLen *= sizeof(WCHAR);
            FUNC2(FUNC0(), 0, tmp);
        }
    }
    else                                /* unknown format */
    {
        FUNC8(stderr,"%d: ERROR, unknown data format\n", FUNC9());
        return ERROR_INVALID_DATA;
    }

    res = FUNC5(
               currentKeyHandle,
               val_name,
               0,                  /* Reserved */
               dwDataType,
               lpbData,
               dwLen);
    if (dwParseType == REG_BINARY)
        FUNC2(FUNC0(), 0, lpbData);
    return res;
}