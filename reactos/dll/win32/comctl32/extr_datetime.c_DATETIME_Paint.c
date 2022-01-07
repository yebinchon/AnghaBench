
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bDropdownEnabled; int hwndSelf; } ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef int HDC ;
typedef TYPE_1__ DATETIME_INFO ;


 int BeginPaint (int ,int *) ;
 int DATETIME_Refresh (TYPE_1__*,int ) ;
 int EndPaint (int ,int *) ;
 int TRUE ;

__attribute__((used)) static LRESULT
DATETIME_Paint (DATETIME_INFO *infoPtr, HDC hdc)
{
    if (!hdc) {
 PAINTSTRUCT ps;
        hdc = BeginPaint (infoPtr->hwndSelf, &ps);
        DATETIME_Refresh (infoPtr, hdc);
        EndPaint (infoPtr->hwndSelf, &ps);
    } else {
        DATETIME_Refresh (infoPtr, hdc);
    }


    infoPtr->bDropdownEnabled = TRUE;

    return 0;
}
