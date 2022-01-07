
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int GetEnvironmentVariableW (char*,int *,int) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int * HeapReAlloc (int ,int ,int *,int) ;
 int MAX_PATH ;

__attribute__((used)) static DWORD
GetSystemDrive(WCHAR **szSystemDrive)
{
    DWORD dwBufSize;


    *szSystemDrive = HeapAlloc(GetProcessHeap(), 0, MAX_PATH * sizeof(WCHAR));
    if (*szSystemDrive != ((void*)0))
    {
        dwBufSize = GetEnvironmentVariableW(L"SystemDrive", *szSystemDrive, MAX_PATH);
        if (dwBufSize > MAX_PATH)
        {
            WCHAR *szTmp;
            DWORD dwBufSize2;

            szTmp = HeapReAlloc(GetProcessHeap(), 0, *szSystemDrive, dwBufSize * sizeof(WCHAR));
            if (szTmp == ((void*)0))
                goto FailGetSysDrive;

            *szSystemDrive = szTmp;

            dwBufSize2 = GetEnvironmentVariableW(L"SystemDrive", *szSystemDrive, dwBufSize);
            if (dwBufSize2 > dwBufSize || dwBufSize2 == 0)
                goto FailGetSysDrive;
        }
        else if (dwBufSize == 0)
        {
FailGetSysDrive:
            HeapFree(GetProcessHeap(), 0, *szSystemDrive);
            *szSystemDrive = ((void*)0);
            return 0;
        }

        return dwBufSize;
    }

    return 0;
}
