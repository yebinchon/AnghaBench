
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Self; } ;
typedef TYPE_1__ PROGRESS_INFO ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int PROGRESS_Draw (TYPE_1__*,int ) ;

__attribute__((used)) static LRESULT PROGRESS_Paint (PROGRESS_INFO *infoPtr, HDC hdc)
{
    PAINTSTRUCT ps;
    if (hdc) return PROGRESS_Draw (infoPtr, hdc);
    hdc = BeginPaint (infoPtr->Self, &ps);
    PROGRESS_Draw (infoPtr, hdc);
    EndPaint (infoPtr->Self, &ps);
    return 0;
}
