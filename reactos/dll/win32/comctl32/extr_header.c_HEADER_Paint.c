
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; } ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef TYPE_1__ HEADER_INFO ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int HEADER_Refresh (TYPE_1__*,int ) ;

__attribute__((used)) static LRESULT
HEADER_Paint (HEADER_INFO *infoPtr, HDC hdcParam)
{
    HDC hdc;
    PAINTSTRUCT ps;

    hdc = hdcParam==0 ? BeginPaint (infoPtr->hwndSelf, &ps) : hdcParam;
    HEADER_Refresh (infoPtr, hdc);
    if(!hdcParam)
 EndPaint (infoPtr->hwndSelf, &ps);
    return 0;
}
