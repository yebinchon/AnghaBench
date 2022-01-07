
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lpServiceName; } ;
typedef TYPE_1__* PSERVICE ;
typedef int LPBYTE ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 int DPRINT (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int KEY_WRITE ;
 int REG_DWORD ;
 int RegCloseKey (int *) ;
 scalar_t__ RegSetValueExW (int *,char*,int ,int ,int ,int) ;
 scalar_t__ ScmOpenServiceKey (int ,int ,int **) ;

DWORD
ScmMarkServiceForDelete(PSERVICE pService)
{
    HKEY hServiceKey = ((void*)0);
    DWORD dwValue = 1;
    DWORD dwError;

    DPRINT("ScmMarkServiceForDelete() called\n");

    dwError = ScmOpenServiceKey(pService->lpServiceName,
                                KEY_WRITE,
                                &hServiceKey);
    if (dwError != ERROR_SUCCESS)
        return dwError;

    dwError = RegSetValueExW(hServiceKey,
                             L"DeleteFlag",
                             0,
                             REG_DWORD,
                             (LPBYTE)&dwValue,
                             sizeof(DWORD));

    RegCloseKey(hServiceKey);

    return dwError;
}
