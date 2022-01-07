
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szParameters ;
typedef int WCHAR ;
typedef int LPWSTR ;
typedef int INT_PTR ;
typedef int INT ;


 int MAX_PATH ;
 int SW_SHOWDEFAULT ;
 scalar_t__ ShellExecuteW (int *,char*,char*,int *,int *,int ) ;
 int StringCbCat (int *,int,int ) ;
 int StringCbCopy (int *,int,char*) ;

__attribute__((used)) static INT
OpenShellFolder(LPWSTR lpFolderCLSID)
{
    WCHAR szParameters[MAX_PATH];





    StringCbCopy(szParameters, sizeof(szParameters), L"/n,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}\\::{21EC2020-3AEA-1069-A2DD-08002B30309D}");
    StringCbCat(szParameters,sizeof(szParameters), lpFolderCLSID);

    return (INT_PTR)ShellExecuteW(((void*)0),
                                  L"open",
                                  L"explorer.exe",
                                  szParameters,
                                  ((void*)0),
                                  SW_SHOWDEFAULT) > 32;
}
