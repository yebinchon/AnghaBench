
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int hMainWnd; scalar_t__ bMinOnRun; } ;
struct TYPE_4__ {int nCmdShow; int hWorkDir; int hCmdLine; } ;
typedef TYPE_1__ PROGRAM ;


 int CloseWindow (int ) ;
 TYPE_3__ Globals ;
 int ShellExecuteW (int *,int *,int ,int *,int ,int ) ;

VOID PROGRAM_ExecuteProgram(PROGRAM* hProgram)
{


    ShellExecuteW(((void*)0), ((void*)0), hProgram->hCmdLine, ((void*)0), hProgram->hWorkDir, hProgram->nCmdShow);

    if (Globals.bMinOnRun)
        CloseWindow(Globals.hMainWnd);
}
