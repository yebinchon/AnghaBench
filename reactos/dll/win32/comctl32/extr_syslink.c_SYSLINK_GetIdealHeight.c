
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Self; int Font; } ;
struct TYPE_5__ {scalar_t__ tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef TYPE_2__ SYSLINK_INFO ;
typedef scalar_t__ LRESULT ;
typedef int HGDIOBJ ;
typedef int * HDC ;


 int * GetDC (int ) ;
 scalar_t__ GetTextMetricsW (int *,TYPE_1__*) ;
 int ReleaseDC (int ,int *) ;
 int SelectObject (int *,int ) ;

__attribute__((used)) static LRESULT SYSLINK_GetIdealHeight (const SYSLINK_INFO *infoPtr)
{
    HDC hdc = GetDC(infoPtr->Self);
    if(hdc != ((void*)0))
    {
        LRESULT height;
        TEXTMETRICW tm;
        HGDIOBJ hOldFont = SelectObject(hdc, infoPtr->Font);

        if(GetTextMetricsW(hdc, &tm))
        {
            height = tm.tmHeight;
        }
        else
        {
            height = 0;
        }
        SelectObject(hdc, hOldFont);
        ReleaseDC(infoPtr->Self, hdc);

        return height;
    }
    return 0;
}
