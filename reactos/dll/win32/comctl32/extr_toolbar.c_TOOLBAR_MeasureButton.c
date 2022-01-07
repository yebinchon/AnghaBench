
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int cy; int cx; } ;
struct TYPE_9__ {int cxLeftWidth; int cxRightWidth; scalar_t__ cyTopHeight; scalar_t__ cyBottomHeight; } ;
struct TYPE_8__ {int cy; int cx; } ;
struct TYPE_10__ {int dwStyle; int nBitmapHeight; int nBitmapWidth; int iListGap; TYPE_2__ themeMargins; TYPE_1__ szPadding; } ;
typedef TYPE_3__ TOOLBAR_INFO ;
typedef TYPE_4__ SIZE ;
typedef scalar_t__ BOOL ;


 int DEFPAD_CY ;
 int GetSystemMetrics (int ) ;
 int LISTPAD_CY ;
 scalar_t__ NONLIST_NOTEXT_OFFSET ;
 int SM_CXEDGE ;
 int TBSTYLE_LIST ;
 void* max (int,int) ;

__attribute__((used)) static inline SIZE TOOLBAR_MeasureButton(const TOOLBAR_INFO *infoPtr, SIZE sizeString,
                                         BOOL bHasBitmap, BOOL bValidImageList)
{
    SIZE sizeButton;
    if (infoPtr->dwStyle & TBSTYLE_LIST)
    {

        sizeButton.cy = max((bHasBitmap ? infoPtr->nBitmapHeight : 0),
            sizeString.cy);


        if (bValidImageList)
        {




            if (bHasBitmap)
                sizeButton.cy += DEFPAD_CY;
            else

                sizeButton.cy += LISTPAD_CY;
        }
        else
            sizeButton.cy += infoPtr->szPadding.cy;


        sizeButton.cx = 2*GetSystemMetrics(SM_CXEDGE) +
            infoPtr->nBitmapWidth + infoPtr->iListGap;
        if (sizeString.cx > 0)
            sizeButton.cx += sizeString.cx + infoPtr->szPadding.cx;

    }
    else
    {
        if (bHasBitmap)
        {



            sizeButton.cy = infoPtr->nBitmapHeight + DEFPAD_CY;

            if (sizeString.cy > 0)
                sizeButton.cy += 1 + sizeString.cy;
            sizeButton.cx = infoPtr->szPadding.cx +
                max(sizeString.cx, infoPtr->nBitmapWidth);
        }
        else
        {
            sizeButton.cy = sizeString.cy + infoPtr->szPadding.cy +
                NONLIST_NOTEXT_OFFSET;
            sizeButton.cx = infoPtr->szPadding.cx +
                max(2*GetSystemMetrics(SM_CXEDGE) + sizeString.cx, infoPtr->nBitmapWidth);
        }
    }






    return sizeButton;
}
