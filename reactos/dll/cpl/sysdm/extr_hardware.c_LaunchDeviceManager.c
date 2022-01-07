
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* PDEVMGREXEC ) (int ,int ,int *,int ) ;
typedef int INT_PTR ;
typedef int HWND ;
typedef int HMODULE ;
typedef int BOOL ;


 int FALSE ;
 int FreeLibrary (int ) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibrary (int ) ;
 int SW_SHOW ;
 int SW_SHOWNORMAL ;
 scalar_t__ ShellExecuteW (int *,char*,char*,int *,int *,int ) ;
 int _TEXT (char*) ;
 int hApplet ;

__attribute__((used)) static BOOL
LaunchDeviceManager(HWND hWndParent)
{




    HMODULE hDll;
    PDEVMGREXEC DevMgrExec;
    BOOL Ret;

    hDll = LoadLibrary(_TEXT("devmgr.dll"));
    if(!hDll)
        return FALSE;

    DevMgrExec = (PDEVMGREXEC)GetProcAddress(hDll, "DeviceManager_ExecuteW");
    if(!DevMgrExec)
    {
        FreeLibrary(hDll);
        return FALSE;
    }


    Ret = DevMgrExec(hWndParent, hApplet, ((void*)0) , SW_SHOW);
    FreeLibrary(hDll);
    return Ret;

}
