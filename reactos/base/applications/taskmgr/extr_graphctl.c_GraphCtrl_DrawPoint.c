
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int left; int top; int right; long bottom; } ;
struct TYPE_6__ {int top; int bottom; } ;
struct TYPE_7__ {int m_nShiftPixels; int m_nPlotShiftPixels; int* m_dPreviousPosition; int m_dLowerLimit; int m_dVerticalFactor; int m_nHalfShiftPixels; int* m_dCurrentPosition; int m_brushBack; int * m_dcPlot; TYPE_3__ m_rectPlot; TYPE_1__ m_rectClient; scalar_t__* m_penPlot; int m_nPlotHeight; int m_nPlotWidth; } ;
typedef TYPE_2__ TGraphCtrl ;
typedef TYPE_3__ RECT ;
typedef scalar_t__ HPEN ;


 int BitBlt (int *,int,int,int ,int ,int *,int,int,int ) ;
 int FillRect (int *,TYPE_3__*,int ) ;
 int LineTo (int *,int,int) ;
 int MAX_PLOTS ;
 int MoveToEx (int *,int,int,int *) ;
 int SRCCOPY ;
 scalar_t__ SelectObject (int *,scalar_t__) ;

void GraphCtrl_DrawPoint(TGraphCtrl* this)
{





    int currX, prevX, currY, prevY;
    HPEN oldPen;
    RECT rectCleanUp;
    int i;

    if (this->m_dcPlot != ((void*)0))
    {







        BitBlt(this->m_dcPlot, this->m_rectPlot.left, this->m_rectPlot.top+1,
               this->m_nPlotWidth, this->m_nPlotHeight, this->m_dcPlot,
               this->m_rectPlot.left+this->m_nShiftPixels, this->m_rectPlot.top+1,
               SRCCOPY);



        rectCleanUp = this->m_rectPlot;
        rectCleanUp.left = rectCleanUp.right - this->m_nShiftPixels;


        FillRect(this->m_dcPlot, &rectCleanUp, this->m_brushBack);


        for (i = 0; i < MAX_PLOTS; i++)
        {

            oldPen = (HPEN)SelectObject(this->m_dcPlot, this->m_penPlot[i]);


            prevX = this->m_rectPlot.right-this->m_nPlotShiftPixels;
            prevY = this->m_rectPlot.bottom -
                (long)((this->m_dPreviousPosition[i] - this->m_dLowerLimit) * this->m_dVerticalFactor);
            MoveToEx(this->m_dcPlot, prevX, prevY, ((void*)0));


            currX = this->m_rectPlot.right-this->m_nHalfShiftPixels;
            currY = this->m_rectPlot.bottom -
                (long)((this->m_dCurrentPosition[i] - this->m_dLowerLimit) * this->m_dVerticalFactor);
            LineTo(this->m_dcPlot, currX, currY);


            SelectObject(this->m_dcPlot, oldPen);






            if ((prevY <= this->m_rectPlot.top) || (currY <= this->m_rectPlot.top))
            {
                RECT rc;
                rc.bottom = this->m_rectPlot.top+1;
                rc.left = prevX;
                rc.right = currX+1;
                rc.top = this->m_rectClient.top;
                FillRect(this->m_dcPlot, &rc, this->m_brushBack);
            }
            if ((prevY >= this->m_rectPlot.bottom) || (currY >= this->m_rectPlot.bottom))
            {
                RECT rc;
                rc.bottom = this->m_rectClient.bottom+1;
                rc.left = prevX;
                rc.right = currX+1;
                rc.top = this->m_rectPlot.bottom+1;

                FillRect(this->m_dcPlot, &rc, this->m_brushBack);
            }


            this->m_dPreviousPosition[i] = this->m_dCurrentPosition[i];
        }
    }
}
