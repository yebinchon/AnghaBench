
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Self; } ;
typedef TYPE_1__ UPDOWN_INFO ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int UPDOWN_Draw (TYPE_1__ const*,int ) ;

__attribute__((used)) static LRESULT UPDOWN_Paint (const UPDOWN_INFO *infoPtr, HDC hdc)
{
    PAINTSTRUCT ps;
    if (hdc) return UPDOWN_Draw (infoPtr, hdc);
    hdc = BeginPaint (infoPtr->Self, &ps);
    UPDOWN_Draw (infoPtr, hdc);
    EndPaint (infoPtr->Self, &ps);
    return 0;
}
