
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int (* PINSTALL_REACTOS ) (int ,int **) ;
typedef int INT ;
typedef int * HMODULE ;


 int DPRINT (char*) ;
 int FreeLibrary (int *) ;
 int GetLastError () ;
 scalar_t__ GetProcAddress (int *,char*) ;
 int * LoadLibraryW (char*) ;

__attribute__((used)) static
INT
RunInstallReactOS(INT argc, WCHAR* argv[])
{
    INT RetVal;
    HMODULE hDll;
    PINSTALL_REACTOS InstallReactOS;

    hDll = LoadLibraryW(L"syssetup.dll");
    if (hDll == ((void*)0))
    {
        DPRINT("Failed to load 'syssetup.dll'!\n");
        return GetLastError();
    }
    DPRINT("Loaded 'syssetup.dll'!\n");


    InstallReactOS = (PINSTALL_REACTOS)GetProcAddress(hDll, "InstallWindowsNt");
    if (InstallReactOS == ((void*)0))
    {
        RetVal = GetLastError();
        DPRINT("Failed to get address for 'InstallWindowsNt()'!\n");
    }
    else
    {
        RetVal = InstallReactOS(argc, argv);
    }

    FreeLibrary(hDll);
    return RetVal;
}
