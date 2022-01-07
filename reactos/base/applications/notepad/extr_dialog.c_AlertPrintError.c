
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* szFileName; int hMainWnd; int hInstance; } ;
typedef scalar_t__ TCHAR ;


 int ARRAY_SIZE (scalar_t__*) ;
 int DIALOG_StringMsgBox (int ,int ,scalar_t__*,int) ;
 TYPE_1__ Globals ;
 int LoadString (int ,int ,scalar_t__*,int ) ;
 int MAX_STRING_LEN ;
 int MB_ICONEXCLAMATION ;
 int MB_OK ;
 int STRING_PRINTERROR ;
 int STRING_UNTITLED ;

__attribute__((used)) static void AlertPrintError(void)
{
    TCHAR szUntitled[MAX_STRING_LEN];

    LoadString(Globals.hInstance, STRING_UNTITLED, szUntitled, ARRAY_SIZE(szUntitled));

    DIALOG_StringMsgBox(Globals.hMainWnd, STRING_PRINTERROR,
                        Globals.szFileName[0] ? Globals.szFileName : szUntitled,
                        MB_ICONEXCLAMATION | MB_OK);
}
