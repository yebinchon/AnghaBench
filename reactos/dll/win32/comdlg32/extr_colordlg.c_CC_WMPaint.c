
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int hwndSelf; } ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef TYPE_1__ CCPRIV ;


 int BeginPaint (int ,int *) ;
 int CC_PaintColorGraph (TYPE_1__*) ;
 int CC_PaintCross (TYPE_1__*) ;
 int CC_PaintLumBar (TYPE_1__*) ;
 int CC_PaintPredefColorArray (TYPE_1__*,int,int) ;
 int CC_PaintSelectedColor (TYPE_1__*) ;
 int CC_PaintTriangle (TYPE_1__*) ;
 int CC_PaintUserColorArray (TYPE_1__*,int,int) ;
 int EndPaint (int ,int *) ;
 int TRUE ;

__attribute__((used)) static LRESULT CC_WMPaint( CCPRIV *lpp )
{
    PAINTSTRUCT ps;

    BeginPaint(lpp->hwndSelf, &ps);

    CC_PaintPredefColorArray(lpp, 6, 8);
    CC_PaintUserColorArray(lpp, 2, 8);
    CC_PaintLumBar(lpp);
    CC_PaintTriangle(lpp);
    CC_PaintSelectedColor(lpp);
    CC_PaintColorGraph(lpp);
    CC_PaintCross(lpp);
    EndPaint(lpp->hwndSelf, &ps);

    return TRUE;
}
