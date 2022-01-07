
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int hEdit; } ;
typedef int FINDREPLACE ;
typedef int BOOL ;


 int EM_SETSEL ;
 int FALSE ;
 TYPE_1__ Globals ;
 scalar_t__ NOTEPAD_FindNext (int *,int ,int ) ;
 int SendMessage (int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static VOID NOTEPAD_ReplaceAll(FINDREPLACE *pFindReplace)
{
    BOOL bShowAlert = TRUE;

    SendMessage(Globals.hEdit, EM_SETSEL, 0, 0);

    while (NOTEPAD_FindNext(pFindReplace, TRUE, bShowAlert))
    {
        bShowAlert = FALSE;
    }
}
