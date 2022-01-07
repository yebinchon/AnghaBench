
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szDispName ;
typedef size_t UINT ;
typedef char TCHAR ;
typedef int SIZE_T ;
typedef scalar_t__ LPTSTR ;
typedef int LPCTSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAYSIZE (char*) ;
 int CCH_LAYOUT_ID ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ExpandEnvironmentStrings (char*,char*,int ) ;
 int FALSE ;
 int FreeLibrary (scalar_t__) ;
 int GetLayoutID (scalar_t__,char*,int ) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 scalar_t__ LoadLibrary (char*) ;
 scalar_t__ LoadString (scalar_t__,int ,char*,int ) ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int ,int *,int *,int ,int*) ;
 int StringCchCopy (scalar_t__,int,char*) ;
 int StringCchPrintf (char*,int ,int ,char*) ;
 int TRUE ;
 int _T (char*) ;
 int _tcslen (char*) ;
 int _ttoi (char*) ;

__attribute__((used)) static BOOL
GetLayoutName(LPTSTR szLayoutNum, LPTSTR szName, SIZE_T NameLength)
{
    HKEY hKey;
    DWORD dwBufLen;
    TCHAR szBuf[MAX_PATH], szDispName[MAX_PATH], szIndex[MAX_PATH], szPath[MAX_PATH];
    TCHAR szLCID[CCH_LAYOUT_ID + 1];
    HANDLE hLib;
    UINT i, j, k;

    if (!GetLayoutID(szLayoutNum, szLCID, ARRAYSIZE(szLCID)))
        return FALSE;

    StringCchPrintf(szBuf, ARRAYSIZE(szBuf), _T("SYSTEM\\CurrentControlSet\\Control\\Keyboard Layouts\\%s"), szLCID);

    if (RegOpenKeyEx(HKEY_LOCAL_MACHINE, (LPCTSTR)szBuf, 0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        dwBufLen = sizeof(szDispName);

        if (RegQueryValueEx(hKey, _T("Layout Display Name"), ((void*)0), ((void*)0), (LPBYTE)szDispName, &dwBufLen) == ERROR_SUCCESS)
        {
            if (szDispName[0] == '@')
            {
                size_t len = _tcslen(szDispName);

                for (i = 0; i < len; i++)
                {
                    if ((szDispName[i] == ',') && (szDispName[i + 1] == '-'))
                    {
                        for (j = i + 2, k = 0; j < _tcslen(szDispName)+1; j++, k++)
                        {
                            szIndex[k] = szDispName[j];
                        }
                        szDispName[i - 1] = '\0';
                        break;
                    }
                    else szDispName[i] = szDispName[i + 1];
                }

                if (ExpandEnvironmentStrings(szDispName, szPath, ARRAYSIZE(szPath)))
                {
                    hLib = LoadLibrary(szPath);
                    if (hLib)
                    {
                        if (LoadString(hLib, _ttoi(szIndex), szPath, ARRAYSIZE(szPath)) != 0)
                        {
                            StringCchCopy(szName, NameLength, szPath);
                            RegCloseKey(hKey);
                            FreeLibrary(hLib);
                            return TRUE;
                        }
                        FreeLibrary(hLib);
                    }
                }
            }
        }

        dwBufLen = NameLength * sizeof(TCHAR);

        if (RegQueryValueEx(hKey, _T("Layout Text"), ((void*)0), ((void*)0), (LPBYTE)szName, &dwBufLen) == ERROR_SUCCESS)
        {
            RegCloseKey(hKey);
            return TRUE;
        }

        RegCloseKey(hKey);
    }

    return FALSE;
}
