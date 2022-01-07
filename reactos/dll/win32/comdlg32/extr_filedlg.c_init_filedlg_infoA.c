
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void WCHAR ;
struct TYPE_10__ {int unicode; TYPE_1__* ofnInfos; } ;
struct TYPE_9__ {int nMaxFile; scalar_t__* lpstrCustomFilter; scalar_t__* lpstrFilter; scalar_t__* lpstrFile; int lpstrTitle; int lpstrDefExt; int lpstrInitialDir; } ;
struct TYPE_8__ {void* lpstrFile; int nMaxFile; void* lpstrCustomFilter; void* lpstrInitialDir; void* lpstrFilter; void* lpstrTitle; void* lpstrDefExt; } ;
typedef TYPE_1__ OPENFILENAMEW ;
typedef TYPE_2__ OPENFILENAMEA ;
typedef scalar_t__* LPCSTR ;
typedef TYPE_3__ FileOpenDlgInfos ;


 int CP_ACP ;
 int FALSE ;
 int MultiByteToWideChar (int ,int ,scalar_t__*,int,void*,int) ;
 void* heap_alloc (int) ;
 int heap_free (void*) ;
 void* heap_strdupAtoW (int ) ;
 int init_filedlg_infoW (TYPE_1__*,TYPE_3__*) ;
 int strlen (scalar_t__*) ;

__attribute__((used)) static void init_filedlg_infoA(OPENFILENAMEA *ofn, FileOpenDlgInfos *info)
{
    OPENFILENAMEW ofnW;
    int len;

    ofnW = *(OPENFILENAMEW *)ofn;

    ofnW.lpstrInitialDir = heap_strdupAtoW(ofn->lpstrInitialDir);
    ofnW.lpstrDefExt = heap_strdupAtoW(ofn->lpstrDefExt);
    ofnW.lpstrTitle = heap_strdupAtoW(ofn->lpstrTitle);

    if (ofn->lpstrFile)
    {
        len = MultiByteToWideChar(CP_ACP, 0, ofn->lpstrFile, ofn->nMaxFile, ((void*)0), 0);
        ofnW.lpstrFile = heap_alloc(len * sizeof(WCHAR));
        MultiByteToWideChar(CP_ACP, 0, ofn->lpstrFile, ofn->nMaxFile, ofnW.lpstrFile, len);
        ofnW.nMaxFile = len;
    }

    if (ofn->lpstrFilter)
    {
        LPCSTR s;
        int n;


        s = ofn->lpstrFilter;
        while (*s) s = s+strlen(s)+1;
        s++;
        n = s - ofn->lpstrFilter;
        len = MultiByteToWideChar(CP_ACP, 0, ofn->lpstrFilter, n, ((void*)0), 0);
        ofnW.lpstrFilter = heap_alloc(len * sizeof(WCHAR));
        MultiByteToWideChar(CP_ACP, 0, ofn->lpstrFilter, n, (WCHAR *)ofnW.lpstrFilter, len);
    }


    if (ofn->lpstrCustomFilter)
    {
        int n, len;
        LPCSTR s;


        s = ofn->lpstrCustomFilter;
        if (*s) s = s+strlen(s)+1;
        if (*s) s = s+strlen(s)+1;
        n = s - ofn->lpstrCustomFilter;
        len = MultiByteToWideChar(CP_ACP, 0, ofn->lpstrCustomFilter, n, ((void*)0), 0);
        ofnW.lpstrCustomFilter = heap_alloc(len * sizeof(WCHAR));
        MultiByteToWideChar(CP_ACP, 0, ofn->lpstrCustomFilter, n, ofnW.lpstrCustomFilter, len);
    }

    init_filedlg_infoW(&ofnW, info);


    info->ofnInfos = (OPENFILENAMEW *)ofn;
    info->unicode = FALSE;


    heap_free((void *)ofnW.lpstrInitialDir);
    heap_free(ofnW.lpstrFile);
}
