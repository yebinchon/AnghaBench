
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* szFileTitle; int hMainWnd; int hEdit; int hInstance; } ;
typedef int TCHAR ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 int EM_GETMODIFY ;
 scalar_t__ FALSE ;
 TYPE_1__ Globals ;
 int LoadString (int ,int ,int *,int ) ;
 int MAX_STRING_LEN ;
 int STRING_NOTEPAD ;
 int STRING_UNTITLED ;
 scalar_t__ SendMessage (int ,int ,int ,int ) ;
 int SetWindowText (int ,int *) ;
 int StringCbPrintf (int *,int ,int ,int ,int *,...) ;
 int StringCchCopy (int *,int ,scalar_t__*) ;
 scalar_t__ TRUE ;
 int _T (char*) ;

void UpdateWindowCaption(BOOL clearModifyAlert)
{
    TCHAR szCaption[MAX_STRING_LEN];
    TCHAR szNotepad[MAX_STRING_LEN];
    TCHAR szFilename[MAX_STRING_LEN];


    LoadString(Globals.hInstance, STRING_NOTEPAD, szNotepad, ARRAY_SIZE(szNotepad));


    if (Globals.szFileTitle[0] != 0)
        StringCchCopy(szFilename, ARRAY_SIZE(szFilename), Globals.szFileTitle);
    else
        LoadString(Globals.hInstance, STRING_UNTITLED, szFilename, ARRAY_SIZE(szFilename));



    if (clearModifyAlert)
        StringCbPrintf(szCaption, ARRAY_SIZE(szCaption), _T("%s - %s"), szFilename, szNotepad);
    else
    {
        BOOL isModified = (SendMessage(Globals.hEdit, EM_GETMODIFY, 0, 0) ? TRUE : FALSE);


        StringCbPrintf(szCaption, ARRAY_SIZE(szCaption), _T("%s%s - %s"),
            (isModified ? _T("*") : _T("")), szFilename, szNotepad);
    }


    SetWindowText(Globals.hMainWnd, szCaption);
}
