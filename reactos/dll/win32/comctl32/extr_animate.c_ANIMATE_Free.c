
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* fnICClose ) (scalar_t__) ;} ;
struct TYPE_5__ {int transparentColor; scalar_t__ currFrame; scalar_t__ nLoop; scalar_t__ nToFrame; scalar_t__ nFromFrame; int ash; int mah; scalar_t__ hbmPrevFrame; int * outdata; int * indata; int * outbih; int * inbih; scalar_t__ hic; int * lpIndex; scalar_t__ hRes; scalar_t__ hMMio; } ;
typedef TYPE_1__ ANIMATE_INFO ;


 int ANIMATE_COLOR_NONE ;
 int ANIMATE_DoStop (TYPE_1__*) ;
 int DeleteObject (scalar_t__) ;
 int FreeResource (scalar_t__) ;
 TYPE_2__ fnIC ;
 int heap_free (int *) ;
 int memset (int *,int ,int) ;
 int mmioClose (scalar_t__,int ) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void ANIMATE_Free(ANIMATE_INFO *infoPtr)
{
    if (infoPtr->hMMio)
    {
        ANIMATE_DoStop(infoPtr);
        mmioClose(infoPtr->hMMio, 0);
        if (infoPtr->hRes)
        {
            FreeResource(infoPtr->hRes);
            infoPtr->hRes = 0;
        }
        heap_free (infoPtr->lpIndex);
        infoPtr->lpIndex = ((void*)0);
        if (infoPtr->hic)
        {
            fnIC.fnICClose(infoPtr->hic);
            infoPtr->hic = 0;
        }
        heap_free (infoPtr->inbih);
        infoPtr->inbih = ((void*)0);
        heap_free (infoPtr->outbih);
        infoPtr->outbih = ((void*)0);
        heap_free (infoPtr->indata);
        infoPtr->indata = ((void*)0);
        heap_free (infoPtr->outdata);
        infoPtr->outdata = ((void*)0);
        if (infoPtr->hbmPrevFrame)
        {
            DeleteObject(infoPtr->hbmPrevFrame);
            infoPtr->hbmPrevFrame = 0;
        }

        memset(&infoPtr->mah, 0, sizeof(infoPtr->mah));
        memset(&infoPtr->ash, 0, sizeof(infoPtr->ash));
        infoPtr->nFromFrame = infoPtr->nToFrame = infoPtr->nLoop = infoPtr->currFrame = 0;
    }
    infoPtr->transparentColor = ANIMATE_COLOR_NONE;
}
