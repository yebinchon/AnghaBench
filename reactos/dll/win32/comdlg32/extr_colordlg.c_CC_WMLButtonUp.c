
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ capturedGraph; } ;
typedef int LRESULT ;
typedef TYPE_1__ CCPRIV ;


 int CC_PaintCross (TYPE_1__*) ;
 int ReleaseCapture () ;

__attribute__((used)) static LRESULT CC_WMLButtonUp( CCPRIV *infoPtr )
{
   if (infoPtr->capturedGraph)
   {
       infoPtr->capturedGraph = 0;
       ReleaseCapture();
       CC_PaintCross(infoPtr);
       return 1;
   }
   return 0;
}
