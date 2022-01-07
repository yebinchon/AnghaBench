
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int wYear; int wMonth; int wDay; int wHour; int wMinute; int wSecond; } ;
struct TYPE_10__ {int select; int nCharsEntered; int* fieldspec; int* charsEntered; TYPE_1__ date; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef TYPE_2__ DATETIME_INFO ;
typedef scalar_t__ BOOL ;


 int DATETIME_IsDateInValidRange (TYPE_2__*,TYPE_1__*) ;
 int DATETIME_SendDateTimeChangeNotify (TYPE_2__*) ;
 scalar_t__ DATETIME_SetSystemTime (TYPE_2__*,int ,TYPE_1__*) ;
 int DTHT_DATEFIELD ;
 scalar_t__ FALSE ;

 int GDT_VALID ;

 scalar_t__ MONTHCAL_MonthLength (int,int) ;
 scalar_t__ TRUE ;
__attribute__((used)) static void
DATETIME_ApplySelectedField (DATETIME_INFO *infoPtr)
{
    int fieldNum = infoPtr->select & DTHT_DATEFIELD;
    int i, val = 0;
    BOOL clamp_day = FALSE;
    SYSTEMTIME date = infoPtr->date;
    int oldyear;

    if (infoPtr->select == -1 || infoPtr->nCharsEntered == 0)
        return;

    if ((infoPtr->fieldspec[fieldNum] == 136) ||
        (infoPtr->fieldspec[fieldNum] == 128))
        val = infoPtr->charsEntered[0];
    else {
        for (i=0; i<infoPtr->nCharsEntered; i++)
            val = val * 10 + infoPtr->charsEntered[i] - '0';
    }

    infoPtr->nCharsEntered = 0;

    switch (infoPtr->fieldspec[fieldNum]) {
        case 137:
        case 129:
            oldyear = date.wYear;
            date.wYear = date.wYear - (date.wYear%100) + val;

            if (DATETIME_IsDateInValidRange(infoPtr, &date))
                clamp_day = TRUE;
            else
                date.wYear = oldyear;

            break;
        case 144:
        case 145:
            oldyear = date.wYear;
            date.wYear = val;

            if (DATETIME_IsDateInValidRange(infoPtr, &date))
                clamp_day = TRUE;
            else
                date.wYear = oldyear;

            break;
        case 139:
        case 131:
            date.wMonth = val;
            clamp_day = TRUE;
            break;
        case 141:
        case 133:
            date.wDay = val;
            break;
        case 143:
        case 135:
            if (val >= 24)
                val -= 20;

            if (val >= 13)
                date.wHour = val;
            else if (val != 0) {
                if (date.wHour >= 12)
                    date.wHour = (val == 12 ? 12 : val + 12);
                else
                    date.wHour = (val == 12 ? 0 : val);
            }
            break;
        case 142:
        case 134:
            date.wHour = val;
            break;
        case 140:
        case 132:
            date.wMinute = val;
            break;
        case 138:
        case 130:
            date.wSecond = val;
            break;
        case 136:
        case 128:
            if (val == 'a' || val == 'A') {
                if (date.wHour >= 12)
                    date.wHour -= 12;
            } else if (val == 'p' || val == 'P') {
                if (date.wHour < 12)
                    date.wHour += 12;
            }
            break;
    }

    if (clamp_day && date.wDay > MONTHCAL_MonthLength(date.wMonth, date.wYear))
        date.wDay = MONTHCAL_MonthLength(date.wMonth, date.wYear);

    if (DATETIME_SetSystemTime(infoPtr, GDT_VALID, &date))
        DATETIME_SendDateTimeChangeNotify (infoPtr);
}
