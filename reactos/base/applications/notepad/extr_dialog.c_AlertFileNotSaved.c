
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hMainWnd; int hInstance; } ;
typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPCTSTR ;


 int ARRAY_SIZE (scalar_t__*) ;
 int DIALOG_StringMsgBox (int ,int ,scalar_t__*,int) ;
 TYPE_1__ Globals ;
 int LoadString (int ,int ,scalar_t__*,int ) ;
 int MAX_STRING_LEN ;
 int MB_ICONQUESTION ;
 int MB_YESNOCANCEL ;
 int STRING_NOTSAVED ;
 int STRING_UNTITLED ;

__attribute__((used)) static int AlertFileNotSaved(LPCTSTR szFileName)
{
    TCHAR szUntitled[MAX_STRING_LEN];

    LoadString(Globals.hInstance, STRING_UNTITLED, szUntitled, ARRAY_SIZE(szUntitled));

    return DIALOG_StringMsgBox(Globals.hMainWnd, STRING_NOTSAVED,
                               szFileName[0] ? szFileName : szUntitled,
                               MB_ICONQUESTION | MB_YESNOCANCEL);
}
