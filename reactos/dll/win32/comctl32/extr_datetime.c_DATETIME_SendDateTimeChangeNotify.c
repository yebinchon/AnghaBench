
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int hwndNotify; int date; scalar_t__ dateValid; int hwndSelf; } ;
struct TYPE_5__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_6__ {TYPE_1__ nmhdr; int st; int dwFlags; } ;
typedef TYPE_2__ NMDATETIMECHANGE ;
typedef int LPARAM ;
typedef TYPE_3__ DATETIME_INFO ;
typedef int BOOL ;


 int DTN_DATETIMECHANGE ;
 int GDT_NONE ;
 int GDT_VALID ;
 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_NOTIFY ;

__attribute__((used)) static BOOL
DATETIME_SendDateTimeChangeNotify (const DATETIME_INFO *infoPtr)
{
    NMDATETIMECHANGE dtdtc;

    dtdtc.nmhdr.hwndFrom = infoPtr->hwndSelf;
    dtdtc.nmhdr.idFrom = GetWindowLongPtrW(infoPtr->hwndSelf, GWLP_ID);
    dtdtc.nmhdr.code = DTN_DATETIMECHANGE;

    dtdtc.dwFlags = infoPtr->dateValid ? GDT_VALID : GDT_NONE;

    dtdtc.st = infoPtr->date;
    return (BOOL) SendMessageW (infoPtr->hwndNotify, WM_NOTIFY,
                                dtdtc.nmhdr.idFrom, (LPARAM)&dtdtc);
}
