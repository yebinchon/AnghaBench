
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bNtfUnicode; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;
typedef int BOOL ;



__attribute__((used)) static LRESULT
TREEVIEW_SetUnicodeFormat(TREEVIEW_INFO *infoPtr, BOOL fUnicode)
{
    BOOL rc = infoPtr->bNtfUnicode;
    infoPtr->bNtfUnicode = fUnicode;
    return rc;
}
