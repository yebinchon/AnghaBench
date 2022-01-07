
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* fieldspec; } ;
typedef TYPE_1__ DATETIME_INFO ;


 int DTHT_DATEFIELD ;

__attribute__((used)) static int DATETIME_GetPrevDateField(const DATETIME_INFO *infoPtr, int i)
{
    for(--i; i >= 0; i--)
    {
        if (infoPtr->fieldspec[i] & DTHT_DATEFIELD) return i;
    }
    return -1;
}
