
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int shInputDll ;
typedef int VOID ;
struct TYPE_4__ {int cbSize; void* lpParameters; void* lpFile; void* lpVerb; int hwnd; } ;
typedef TYPE_1__ SHELLEXECUTEINFO ;
typedef int HWND ;


 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBox (int *,void*,int *,int) ;
 scalar_t__ ShellExecuteEx (TYPE_1__*) ;
 void* _T (char*) ;
 int memset (TYPE_1__*,int,int) ;

__attribute__((used)) static VOID
LaunchHardwareWizard(HWND hWndParent)
{
    SHELLEXECUTEINFO shInputDll;

    memset(&shInputDll, 0x0, sizeof(SHELLEXECUTEINFO));

    shInputDll.cbSize = sizeof(shInputDll);
    shInputDll.hwnd = hWndParent;
    shInputDll.lpVerb = _T("open");
    shInputDll.lpFile = _T("rundll32.exe");
    shInputDll.lpParameters = _T("shell32.dll,Control_RunDLL hdwwiz.cpl");

    if (ShellExecuteEx(&shInputDll) == 0)
    {
        MessageBox(((void*)0),
                   _T("Can't start hdwwiz.cpl"),
                   ((void*)0),
                   MB_OK | MB_ICONERROR);
    }
}
