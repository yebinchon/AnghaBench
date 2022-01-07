
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hMainWnd; } ;
typedef int LPCTSTR ;


 int DIALOG_StringMsgBox (int ,int ,int ,int) ;
 TYPE_1__ Globals ;
 int MB_ICONEXCLAMATION ;
 int MB_OK ;
 int STRING_NOTFOUND ;

__attribute__((used)) static void AlertFileNotFound(LPCTSTR szFileName)
{
    DIALOG_StringMsgBox(Globals.hMainWnd, STRING_NOTFOUND, szFileName, MB_ICONEXCLAMATION | MB_OK);
}
