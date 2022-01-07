
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Self; } ;
typedef TYPE_1__ SYSLINK_INFO ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef scalar_t__ HDC ;


 scalar_t__ BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int SYSLINK_Draw (TYPE_1__ const*,scalar_t__) ;

__attribute__((used)) static LRESULT SYSLINK_Paint (const SYSLINK_INFO *infoPtr, HDC hdcParam)
{
    HDC hdc;
    PAINTSTRUCT ps;

    hdc = hdcParam ? hdcParam : BeginPaint (infoPtr->Self, &ps);
    if (hdc)
    {
        SYSLINK_Draw (infoPtr, hdc);
        if (!hdcParam) EndPaint (infoPtr->Self, &ps);
    }
    return 0;
}
