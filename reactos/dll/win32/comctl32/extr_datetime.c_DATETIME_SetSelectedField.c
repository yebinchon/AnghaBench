
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int select; scalar_t__ nCharsEntered; } ;
typedef TYPE_1__ DATETIME_INFO ;


 int DATETIME_ApplySelectedField (TYPE_1__*) ;

__attribute__((used)) static void
DATETIME_SetSelectedField (DATETIME_INFO *infoPtr, int select)
{
    DATETIME_ApplySelectedField(infoPtr);

    infoPtr->select = select;
    infoPtr->nCharsEntered = 0;
}
