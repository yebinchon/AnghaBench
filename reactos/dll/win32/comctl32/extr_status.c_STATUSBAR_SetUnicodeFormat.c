
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bUnicode; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef int LRESULT ;
typedef int BOOL ;


 int TRACE (char*,int ) ;

__attribute__((used)) static inline LRESULT
STATUSBAR_SetUnicodeFormat (STATUS_INFO *infoPtr, BOOL bUnicode)
{
    BOOL bOld = infoPtr->bUnicode;

    TRACE("(0x%x)\n", bUnicode);
    infoPtr->bUnicode = bUnicode;

    return bOld;
}
