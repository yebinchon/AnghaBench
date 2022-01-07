
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msiexec_version ;
typedef int filename ;
typedef scalar_t__ WCHAR ;
typedef scalar_t__* LPWSTR ;
typedef int HMODULE ;
typedef int DWORD ;


 int ExitProcess (int) ;
 int GetLastError () ;
 int GetModuleFileNameW (int ,scalar_t__*,int) ;
 int GetModuleHandleA (char*) ;
 int GetProcessHeap () ;
 int GetUserDefaultLangID () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int LoadStringW (int ,int,scalar_t__*,int) ;
 int MAX_PATH ;
 int MsiGetFileVersionW (scalar_t__*,scalar_t__*,int*,int *,int *) ;
 int MsiMessageBoxW (int ,scalar_t__*,int *,int ,int ,int ) ;
 int WINE_ERR (char*,int) ;
 int sprintfW (scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void ShowUsage(int ExitCode)
{
    WCHAR msiexec_version[40];
    WCHAR filename[MAX_PATH];
    LPWSTR msi_res;
    LPWSTR msiexec_help;
    HMODULE hmsi = GetModuleHandleA("msi.dll");
    DWORD len;
    DWORD res;


    *filename = 0;
    res = GetModuleFileNameW(hmsi, filename, sizeof(filename) / sizeof(filename[0]));
    if (!res)
        WINE_ERR("GetModuleFileName failed: %d\n", GetLastError());

    len = sizeof(msiexec_version) / sizeof(msiexec_version[0]);
    *msiexec_version = 0;
    res = MsiGetFileVersionW(filename, msiexec_version, &len, ((void*)0), ((void*)0));
    if (res)
        WINE_ERR("MsiGetFileVersion failed with %d\n", res);



    len = LoadStringW(hmsi, 10, (LPWSTR) &msi_res, 0);

    msi_res = HeapAlloc(GetProcessHeap(), 0, (len + 1) * sizeof(WCHAR));
    msiexec_help = HeapAlloc(GetProcessHeap(), 0, (len + 1) * sizeof(WCHAR) + sizeof(msiexec_version));
    if (msi_res && msiexec_help) {
        *msi_res = 0;
        LoadStringW(hmsi, 10, msi_res, len + 1);

        sprintfW(msiexec_help, msi_res, msiexec_version);
        MsiMessageBoxW(0, msiexec_help, ((void*)0), 0, GetUserDefaultLangID(), 0);
    }
    HeapFree(GetProcessHeap(), 0, msi_res);
    HeapFree(GetProcessHeap(), 0, msiexec_help);
    ExitProcess(ExitCode);
}
