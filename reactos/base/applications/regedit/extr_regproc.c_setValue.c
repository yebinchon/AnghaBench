
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwData ;
typedef char WCHAR ;
typedef int * LPBYTE ;
typedef scalar_t__ LONG ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_INVALID_DATA ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 scalar_t__ GetWideStringN (char*,scalar_t__,scalar_t__*) ;
 int HeapFree (int ,int ,int *) ;
 int REGPROC_unescape_string (char*) ;
 scalar_t__ REG_BINARY ;
 scalar_t__ REG_DWORD ;
 scalar_t__ REG_EXPAND_SZ ;
 scalar_t__ REG_MULTI_SZ ;
 scalar_t__ REG_SZ ;
 scalar_t__ RegDeleteValueW (int ,char*) ;
 scalar_t__ RegSetValueExW (int ,char*,int ,scalar_t__,int *,scalar_t__) ;
 int * convertHexCSVToHex (char*,scalar_t__*) ;
 int convertHexToDWord (char*,scalar_t__*) ;
 int currentKeyHandle ;
 int fprintf (int ,char*,int ) ;
 int getAppName () ;
 scalar_t__ getDataType (char**,scalar_t__*) ;
 scalar_t__ lstrcmpW (char*,char*) ;
 scalar_t__ lstrlenW (char*) ;
 int stderr ;

__attribute__((used)) static LONG setValue(WCHAR* val_name, WCHAR* val_data, BOOL is_unicode)
{
    LONG res;
    DWORD dwDataType, dwParseType;
    LPBYTE lpbData;
    DWORD dwData, dwLen;
    WCHAR del[] = {'-',0};

    if ( (val_name == ((void*)0)) || (val_data == ((void*)0)) )
        return ERROR_INVALID_PARAMETER;

    if (lstrcmpW(val_data, del) == 0)
    {
        res=RegDeleteValueW(currentKeyHandle,val_name);
        return (res == ERROR_FILE_NOT_FOUND ? ERROR_SUCCESS : res);
    }


    dwDataType = getDataType(&val_data, &dwParseType);

    if (dwParseType == REG_SZ)
    {
        REGPROC_unescape_string(val_data);




        dwLen = lstrlenW(val_data);
        if(val_data[dwLen-1] != '"')
            return ERROR_INVALID_DATA;
        if (dwLen>0 && val_data[dwLen-1]=='"')
        {
            dwLen--;
            val_data[dwLen]='\0';
        }
        lpbData = (BYTE*) val_data;
        dwLen++;
        dwLen = dwLen * sizeof(WCHAR);
    }
    else if (dwParseType == REG_DWORD)
    {
        if (!convertHexToDWord(val_data, &dwData))
            return ERROR_INVALID_DATA;
        lpbData = (BYTE*)&dwData;
        dwLen = sizeof(dwData);
    }
    else if (dwParseType == REG_BINARY)
    {
        lpbData = convertHexCSVToHex(val_data, &dwLen);
        if (!lpbData)
            return ERROR_INVALID_DATA;

        if((dwDataType == REG_MULTI_SZ || dwDataType == REG_EXPAND_SZ) && !is_unicode)
        {
            LPBYTE tmp = lpbData;
            lpbData = (LPBYTE)GetWideStringN((char*)lpbData, dwLen, &dwLen);
            dwLen *= sizeof(WCHAR);
            HeapFree(GetProcessHeap(), 0, tmp);
        }
    }
    else
    {
        fprintf(stderr,"%S: ERROR, unknown data format\n", getAppName());
        return ERROR_INVALID_DATA;
    }

    res = RegSetValueExW(
               currentKeyHandle,
               val_name,
               0,
               dwDataType,
               lpbData,
               dwLen);
    if (dwParseType == REG_BINARY)
        HeapFree(GetProcessHeap(), 0, lpbData);
    return res;
}
