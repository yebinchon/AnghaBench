
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HWND ;
typedef int DWORD ;


 int COUNT_OF (int *) ;
 int ErrorMessageBox (int ,int *,int ) ;
 int IDS_ERROR ;
 int LoadStringW (int ,int ,int *,int ) ;
 int hInst ;
 int wcscpy (int *,char*) ;

__attribute__((used)) static void error_code_messagebox(HWND hwnd, DWORD error_code)
{
    WCHAR title[256];
    if (!LoadStringW(hInst, IDS_ERROR, title, COUNT_OF(title)))
        wcscpy(title, L"Error");
    ErrorMessageBox(hwnd, title, error_code);
}
