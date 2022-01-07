
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_13__ {scalar_t__ hIcon; int hWnd; } ;
struct TYPE_12__ {TYPE_1__* hPrograms; int hListView; TYPE_3__* hActiveProgram; } ;
struct TYPE_11__ {struct TYPE_11__* hWorkDir; struct TYPE_11__* hIconFile; struct TYPE_11__* hCmdLine; struct TYPE_11__* hName; struct TYPE_11__* Tags; TYPE_4__* hGroup; TYPE_2__* hPrior; TYPE_1__* hNext; int iItem; } ;
struct TYPE_10__ {TYPE_1__* hNext; } ;
struct TYPE_9__ {TYPE_2__* hPrior; } ;
typedef TYPE_3__ PROGRAM ;
typedef TYPE_4__ PROGGROUP ;
typedef scalar_t__ BOOL ;


 int DestroyIcon (scalar_t__) ;
 int DestroyWindow (int ) ;
 int Free (TYPE_3__*) ;
 int GRPFILE_WriteGroupFile (TYPE_4__*) ;
 int LVM_DELETEITEM ;
 int SendMessageA (int ,int ,int ,int ) ;
 TYPE_5__* program ;

VOID PROGRAM_DeleteProgram(PROGRAM* hProgram, BOOL bUpdateGrpFile)
{
    PROGGROUP* group;

    group = hProgram->hGroup;
    if (hProgram->hGroup->hActiveProgram == hProgram)
        group->hActiveProgram = ((void*)0);

    SendMessageA(group->hListView, LVM_DELETEITEM, hProgram->iItem, 0);

    if (hProgram->hPrior)
        hProgram->hPrior->hNext = hProgram->hNext;
    else
        hProgram->hGroup->hPrograms = hProgram->hNext;

    if (hProgram->hNext)
        hProgram->hNext->hPrior = hProgram->hPrior;

    if (bUpdateGrpFile)
        GRPFILE_WriteGroupFile(hProgram->hGroup);







    if (hProgram->Tags)
        Free(hProgram->Tags);
    Free(hProgram->hName);
    Free(hProgram->hCmdLine);
    Free(hProgram->hIconFile);
    Free(hProgram->hWorkDir);
    Free(hProgram);
}
