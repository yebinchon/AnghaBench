
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int icc ;
typedef int WCHAR ;
struct TYPE_10__ {int unicode; int * initdir; void* filename; int customfilter; int filter; int defext; int title; TYPE_1__* ofnInfos; } ;
struct TYPE_9__ {int dwSize; int dwICC; } ;
struct TYPE_8__ {int nMaxFile; scalar_t__ lpstrInitialDir; scalar_t__ lpstrFile; int lpstrCustomFilter; int lpstrFilter; int lpstrDefExt; int lpstrTitle; } ;
typedef TYPE_1__ OPENFILENAMEW ;
typedef TYPE_2__ INITCOMMONCONTROLSEX ;
typedef TYPE_3__ FileOpenDlgInfos ;
typedef int DWORD ;


 int COMDLG32_SetCommDlgExtendedError (int ) ;
 int ExpandEnvironmentStringsW (scalar_t__,int *,int) ;
 int ICC_USEREX_CLASSES ;
 int InitCommonControlsEx (TYPE_2__*) ;
 int TRUE ;
 void* heap_alloc (int) ;
 int lstrcpynW (void*,scalar_t__,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void init_filedlg_infoW(OPENFILENAMEW *ofn, FileOpenDlgInfos *info)
{
    INITCOMMONCONTROLSEX icc;


    icc.dwSize = sizeof(icc);
    icc.dwICC = ICC_USEREX_CLASSES;
    InitCommonControlsEx(&icc);


    COMDLG32_SetCommDlgExtendedError(0);

    memset(info, 0, sizeof(*info));


    info->ofnInfos = ofn;

    info->title = ofn->lpstrTitle;
    info->defext = ofn->lpstrDefExt;
    info->filter = ofn->lpstrFilter;
    info->customfilter = ofn->lpstrCustomFilter;

    if (ofn->lpstrFile)
    {
        info->filename = heap_alloc(ofn->nMaxFile * sizeof(WCHAR));
        lstrcpynW(info->filename, ofn->lpstrFile, ofn->nMaxFile);
    }

    if (ofn->lpstrInitialDir)
    {
        DWORD len = ExpandEnvironmentStringsW(ofn->lpstrInitialDir, ((void*)0), 0);
        if (len)
        {
            info->initdir = heap_alloc(len * sizeof(WCHAR));
            ExpandEnvironmentStringsW(ofn->lpstrInitialDir, info->initdir, len);
        }
    }

    info->unicode = TRUE;
}
