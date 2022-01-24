#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void WCHAR ;
typedef  int UINT ;
struct TYPE_7__ {int /*<<< orphan*/  dwDlgProp; } ;
struct TYPE_10__ {void* filename; void* initdir; int /*<<< orphan*/ * places; scalar_t__ customfilter; scalar_t__ filter; scalar_t__ title; scalar_t__ defext; scalar_t__ unicode; TYPE_2__* ofnInfos; TYPE_1__ DlgInfos; } ;
struct TYPE_9__ {int /*<<< orphan*/  nMaxFileTitle; int /*<<< orphan*/  lpstrFileTitle; int /*<<< orphan*/  lpstrFile; } ;
struct TYPE_8__ {int Flags; int /*<<< orphan*/  nMaxFileTitle; scalar_t__ lpstrFileTitle; scalar_t__ lpstrFile; } ;
typedef  TYPE_2__* LPOPENFILENAMEW ;
typedef  TYPE_3__* LPOPENFILENAMEA ;
typedef  TYPE_4__ FileOpenDlgInfos ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FODPROP_SAVEDLG ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int OFN_NOCHANGEDIR ; 
#define  OPEN_DIALOG 129 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
#define  SAVE_DIALOG 128 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC11(FileOpenDlgInfos *info, UINT dlg_type)
{
    WCHAR *current_dir = NULL;
    unsigned int i;
    BOOL ret;

    /* save current directory */
    if (info->ofnInfos->Flags & OFN_NOCHANGEDIR)
    {
        current_dir = FUNC7(MAX_PATH * sizeof(WCHAR));
        FUNC1(MAX_PATH, current_dir);
    }

    switch (dlg_type)
    {
    case OPEN_DIALOG:
        ret = FUNC2(info);
        break;
    case SAVE_DIALOG:
        info->DlgInfos.dwDlgProp |= FODPROP_SAVEDLG;
        ret = FUNC2(info);
        break;
    default:
        ret = FALSE;
    }

    /* set the lpstrFileTitle */
    if (ret && info->ofnInfos->lpstrFile && info->ofnInfos->lpstrFileTitle)
    {
        if (info->unicode)
        {
            LPOPENFILENAMEW ofn = info->ofnInfos;
            WCHAR *file_title = FUNC5(ofn->lpstrFile);
            FUNC10(ofn->lpstrFileTitle, file_title, ofn->nMaxFileTitle);
        }
        else
        {
            LPOPENFILENAMEA ofn = (LPOPENFILENAMEA)info->ofnInfos;
            char *file_title = FUNC4(ofn->lpstrFile);
            FUNC9(ofn->lpstrFileTitle, file_title, ofn->nMaxFileTitle);
        }
    }

    if (current_dir)
    {
        FUNC6(current_dir);
        FUNC8(current_dir);
    }

    if (!info->unicode)
    {
        FUNC8((void *)info->defext);
        FUNC8((void *)info->title);
        FUNC8((void *)info->filter);
        FUNC8((void *)info->customfilter);
    }

    FUNC8(info->filename);
    FUNC8(info->initdir);

    for (i = 0; i < FUNC0(info->places); i++)
        FUNC3(info->places[i]);

    return ret;
}