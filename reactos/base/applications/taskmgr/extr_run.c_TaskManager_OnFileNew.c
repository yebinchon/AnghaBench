
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szTitle ;
typedef int szText ;
typedef int WCHAR ;
typedef int (* RUNFILEDLG ) (int ,int ,int *,int *,int *,int ) ;
typedef int LPCSTR ;
typedef int HMODULE ;
typedef int HICON ;
typedef scalar_t__ FARPROC ;


 int DeleteObject (int ) ;
 int FreeLibrary (int ) ;
 scalar_t__ GetProcAddress (int ,int ) ;
 int IDI_TASKMANAGER ;
 int IDS_CREATENEWTASK ;
 int IDS_CREATENEWTASK_DESC ;
 int LoadIconW (int ,int ) ;
 int LoadLibraryW (char*) ;
 int LoadStringW (int ,int ,int *,int) ;
 int MAKEINTRESOURCEW (int ) ;
 int RFF_CALCDIRECTORY ;
 int hInst ;
 int hMainWnd ;

void TaskManager_OnFileNew(void)
{
    HMODULE hShell32;
    RUNFILEDLG RunFileDlg;
    WCHAR szTitle[40];
    WCHAR szText[256];


    LoadStringW(hInst, IDS_CREATENEWTASK, szTitle, sizeof(szTitle) / sizeof(szTitle[0]));
    LoadStringW(hInst, IDS_CREATENEWTASK_DESC, szText, sizeof(szText) / sizeof(szText[0]));

    hShell32 = LoadLibraryW(L"SHELL32.DLL");
    RunFileDlg = (RUNFILEDLG)(FARPROC)GetProcAddress(hShell32, (LPCSTR)61);


    if (RunFileDlg)
    {
        HICON hIcon = LoadIconW(hInst, MAKEINTRESOURCEW(IDI_TASKMANAGER));



        RunFileDlg(hMainWnd, hIcon, ((void*)0), szTitle, szText, RFF_CALCDIRECTORY);

        DeleteObject(hIcon);
    }

    FreeLibrary(hShell32);
}
