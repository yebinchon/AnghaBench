
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* lpcc; void* l; void* s; void* h; int hwndSelf; void* capturedGraph; } ;
struct TYPE_11__ {int rgbResult; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_2__ CCPRIV ;


 int CC_EditSetHSL (TYPE_2__*) ;
 int CC_EditSetRGB (TYPE_2__*) ;
 int CC_HSLtoRGB (void*,void*,void*) ;
 scalar_t__ CC_MouseCheckColorGraph (int ,void*,void**,void**,int ) ;
 scalar_t__ CC_MouseCheckPredefColorArray (TYPE_2__*,int,int,int ) ;
 scalar_t__ CC_MouseCheckUserColorArray (TYPE_2__*,int,int,int ) ;
 int CC_PaintCross (TYPE_2__*) ;
 int CC_PaintSelectedColor (TYPE_2__*) ;
 int CC_PaintTriangle (TYPE_2__*) ;
 void* CC_RGBtoHSL (char,int ) ;
 int FALSE ;
 void* IDC_COLOR_GRAPH ;
 void* IDC_COLOR_LUMBAR ;
 int SetCapture (int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT CC_WMLButtonDown( CCPRIV *infoPtr, LPARAM lParam )
{
   int i = 0;

   if (CC_MouseCheckPredefColorArray(infoPtr, 6, 8, lParam))
      i = 1;
   else
      if (CC_MouseCheckUserColorArray(infoPtr, 2, 8, lParam))
         i = 1;
      else
  if (CC_MouseCheckColorGraph(infoPtr->hwndSelf, IDC_COLOR_GRAPH, &infoPtr->h, &infoPtr->s, lParam))
         {
     i = 2;
            infoPtr->capturedGraph = IDC_COLOR_GRAPH;
         }
  else
     if (CC_MouseCheckColorGraph(infoPtr->hwndSelf, IDC_COLOR_LUMBAR, ((void*)0), &infoPtr->l, lParam))
            {
        i = 2;
               infoPtr->capturedGraph = IDC_COLOR_LUMBAR;
            }
   if ( i == 2 )
   {
      SetCapture(infoPtr->hwndSelf);
      infoPtr->lpcc->rgbResult = CC_HSLtoRGB(infoPtr->h, infoPtr->s, infoPtr->l);
   }
   if ( i == 1 )
   {
      infoPtr->h = CC_RGBtoHSL('H', infoPtr->lpcc->rgbResult);
      infoPtr->s = CC_RGBtoHSL('S', infoPtr->lpcc->rgbResult);
      infoPtr->l = CC_RGBtoHSL('L', infoPtr->lpcc->rgbResult);
   }
   if (i)
   {
      CC_EditSetRGB(infoPtr);
      CC_EditSetHSL(infoPtr);
      CC_PaintCross(infoPtr);
      CC_PaintTriangle(infoPtr);
      CC_PaintSelectedColor(infoPtr);
      return TRUE;
   }
   return FALSE;
}
