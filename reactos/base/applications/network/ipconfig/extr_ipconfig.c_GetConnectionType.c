
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * PBYTE ;
typedef int * LPTSTR ;
typedef int * HKEY ;
typedef int DWORD ;


 int CharToOem (int *,int *) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int KEY_READ ;
 int ProcessHeap ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyEx (int ,int *,int ,int ,int **) ;
 scalar_t__ RegQueryValueEx (int *,int *,int *,int*,int *,int*) ;
 int * _T (char*) ;
 int lstrlen (int *) ;
 int wsprintf (int *,int *,int *,int *,int *) ;

LPTSTR GetConnectionType(LPTSTR lpClass)
{
    HKEY hKey = ((void*)0);
    LPTSTR ConType = ((void*)0);
    LPTSTR ConTypeTmp = ((void*)0);
    TCHAR Path[256];
    LPTSTR PrePath = _T("SYSTEM\\CurrentControlSet\\Control\\Network\\{4D36E972-E325-11CE-BFC1-08002BE10318}\\");
    LPTSTR PostPath = _T("\\Connection");
    DWORD PathSize;
    DWORD dwType;
    DWORD dwDataSize;


    PathSize = lstrlen(PrePath) + lstrlen(lpClass) + lstrlen(PostPath) + 1;
    if (PathSize >= 255)
        return ((void*)0);

    wsprintf(Path, _T("%s%s%s"), PrePath, lpClass, PostPath);

    if (RegOpenKeyEx(HKEY_LOCAL_MACHINE,
                     Path,
                     0,
                     KEY_READ,
                     &hKey) == ERROR_SUCCESS)
    {
        if (RegQueryValueEx(hKey,
                            _T("Name"),
                            ((void*)0),
                            &dwType,
                            ((void*)0),
                            &dwDataSize) == ERROR_SUCCESS)
        {
            ConTypeTmp = (LPTSTR)HeapAlloc(ProcessHeap,
                                           0,
                                           dwDataSize);

            if (ConTypeTmp == ((void*)0))
                return ((void*)0);

            ConType = (LPTSTR)HeapAlloc(ProcessHeap,
                                        0,
                                        dwDataSize);

            if (ConType == ((void*)0))
            {
                HeapFree(ProcessHeap, 0, ConTypeTmp);
                return ((void*)0);
            }

            if (RegQueryValueEx(hKey,
                                _T("Name"),
                                ((void*)0),
                                &dwType,
                                (PBYTE)ConTypeTmp,
                                &dwDataSize) != ERROR_SUCCESS)
            {
                HeapFree(ProcessHeap,
                         0,
                         ConType);

                ConType = ((void*)0);
            }

            if (ConType)
                CharToOem(ConTypeTmp, ConType);
            HeapFree(ProcessHeap, 0, ConTypeTmp);
        }
    }

    if (hKey != ((void*)0))
        RegCloseKey(hKey);

    return ConType;
}
