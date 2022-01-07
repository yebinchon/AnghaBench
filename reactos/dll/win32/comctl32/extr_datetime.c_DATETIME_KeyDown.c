
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int select; int* fieldspec; int nrFields; int hwndSelf; int nCharsEntered; int haveFocus; } ;
typedef int LRESULT ;
typedef int DWORD ;
typedef TYPE_1__ DATETIME_INFO ;


 int DATETIME_IncreaseField (TYPE_1__*,int,int) ;
 int DATETIME_SendDateTimeChangeNotify (TYPE_1__*) ;
 int DATETIME_SetSelectedField (TYPE_1__*,int) ;
 int DTHT_DATEFIELD ;
 int DT_STRING ;
 int FIXME (char*) ;
 int FORMATCALLMASK ;
 int INT_MAX ;
 int INT_MIN ;
 int InvalidateRect (int ,int *,int ) ;
 int TRUE ;
__attribute__((used)) static LRESULT
DATETIME_KeyDown (DATETIME_INFO *infoPtr, DWORD vkCode)
{
    int fieldNum = infoPtr->select & DTHT_DATEFIELD;
    int wrap = 0;
    int new;

    if (!(infoPtr->haveFocus)) return 0;
    if ((fieldNum==0) && (infoPtr->select)) return 0;

    if (infoPtr->select & FORMATCALLMASK) {
 FIXME ("Callbacks not implemented yet\n");
    }

    switch (vkCode) {
 case 135:
     case 128:
     infoPtr->nCharsEntered = 0;
     DATETIME_IncreaseField (infoPtr, fieldNum, 1);
     DATETIME_SendDateTimeChangeNotify (infoPtr);
     break;
 case 129:
 case 134:
     infoPtr->nCharsEntered = 0;
     DATETIME_IncreaseField (infoPtr, fieldNum, -1);
     DATETIME_SendDateTimeChangeNotify (infoPtr);
     break;
 case 132:
     infoPtr->nCharsEntered = 0;
     DATETIME_IncreaseField (infoPtr, fieldNum, INT_MIN);
     DATETIME_SendDateTimeChangeNotify (infoPtr);
     break;
 case 133:
     infoPtr->nCharsEntered = 0;
     DATETIME_IncreaseField (infoPtr, fieldNum, INT_MAX);
     DATETIME_SendDateTimeChangeNotify (infoPtr);
     break;
 case 131:
     new = infoPtr->select;
     do {
  if (new == 0) {
      new = new - 1;
      wrap++;
  } else {
      new--;
  }
     } while ((infoPtr->fieldspec[new] & DT_STRING) && (wrap<2));
     if (new != infoPtr->select)
         DATETIME_SetSelectedField(infoPtr, new);
     break;
 case 130:
     new = infoPtr->select;
     do {
  new++;
  if (new==infoPtr->nrFields) {
      new = 0;
      wrap++;
  }
     } while ((infoPtr->fieldspec[new] & DT_STRING) && (wrap<2));
     if (new != infoPtr->select)
         DATETIME_SetSelectedField(infoPtr, new);
     break;
    }

    InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);

    return 0;
}
