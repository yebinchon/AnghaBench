
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bUnicode; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL
TRACKBAR_SetUnicodeFormat (TRACKBAR_INFO *infoPtr, BOOL fUnicode)
{
    BOOL bTemp = infoPtr->bUnicode;

    infoPtr->bUnicode = fUnicode;

    return bTemp;
}
