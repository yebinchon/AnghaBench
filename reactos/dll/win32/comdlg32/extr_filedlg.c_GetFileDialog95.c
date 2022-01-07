
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void WCHAR ;
typedef int UINT ;
struct TYPE_7__ {int dwDlgProp; } ;
struct TYPE_10__ {void* filename; void* initdir; int * places; scalar_t__ customfilter; scalar_t__ filter; scalar_t__ title; scalar_t__ defext; scalar_t__ unicode; TYPE_2__* ofnInfos; TYPE_1__ DlgInfos; } ;
struct TYPE_9__ {int nMaxFileTitle; int lpstrFileTitle; int lpstrFile; } ;
struct TYPE_8__ {int Flags; int nMaxFileTitle; scalar_t__ lpstrFileTitle; scalar_t__ lpstrFile; } ;
typedef TYPE_2__* LPOPENFILENAMEW ;
typedef TYPE_3__* LPOPENFILENAMEA ;
typedef TYPE_4__ FileOpenDlgInfos ;
typedef scalar_t__ BOOL ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ FALSE ;
 int FODPROP_SAVEDLG ;
 int GetCurrentDirectoryW (int,void*) ;
 scalar_t__ GetFileName95 (TYPE_4__*) ;
 int ILFree (int ) ;
 int MAX_PATH ;
 int OFN_NOCHANGEDIR ;

 char* PathFindFileNameA (int ) ;
 void* PathFindFileNameW (scalar_t__) ;

 int SetCurrentDirectoryW (void*) ;
 void* heap_alloc (int) ;
 int heap_free (void*) ;
 int lstrcpynA (int ,char*,int ) ;
 int lstrcpynW (scalar_t__,void*,int ) ;

__attribute__((used)) static BOOL GetFileDialog95(FileOpenDlgInfos *info, UINT dlg_type)
{
    WCHAR *current_dir = ((void*)0);
    unsigned int i;
    BOOL ret;


    if (info->ofnInfos->Flags & OFN_NOCHANGEDIR)
    {
        current_dir = heap_alloc(MAX_PATH * sizeof(WCHAR));
        GetCurrentDirectoryW(MAX_PATH, current_dir);
    }

    switch (dlg_type)
    {
    case 129:
        ret = GetFileName95(info);
        break;
    case 128:
        info->DlgInfos.dwDlgProp |= FODPROP_SAVEDLG;
        ret = GetFileName95(info);
        break;
    default:
        ret = FALSE;
    }


    if (ret && info->ofnInfos->lpstrFile && info->ofnInfos->lpstrFileTitle)
    {
        if (info->unicode)
        {
            LPOPENFILENAMEW ofn = info->ofnInfos;
            WCHAR *file_title = PathFindFileNameW(ofn->lpstrFile);
            lstrcpynW(ofn->lpstrFileTitle, file_title, ofn->nMaxFileTitle);
        }
        else
        {
            LPOPENFILENAMEA ofn = (LPOPENFILENAMEA)info->ofnInfos;
            char *file_title = PathFindFileNameA(ofn->lpstrFile);
            lstrcpynA(ofn->lpstrFileTitle, file_title, ofn->nMaxFileTitle);
        }
    }

    if (current_dir)
    {
        SetCurrentDirectoryW(current_dir);
        heap_free(current_dir);
    }

    if (!info->unicode)
    {
        heap_free((void *)info->defext);
        heap_free((void *)info->title);
        heap_free((void *)info->filter);
        heap_free((void *)info->customfilter);
    }

    heap_free(info->filename);
    heap_free(info->initdir);

    for (i = 0; i < ARRAY_SIZE(info->places); i++)
        ILFree(info->places[i]);

    return ret;
}
