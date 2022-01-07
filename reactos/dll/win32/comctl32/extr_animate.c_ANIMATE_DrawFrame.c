
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ (* fnICDecompress ) (scalar_t__,int ,int ,int ,int ,int ) ;} ;
struct TYPE_7__ {int dwSuggestedBufferSize; } ;
struct TYPE_8__ {size_t currFrame; int nLoop; size_t nFromFrame; int nToFrame; int outdata; int outbih; int indata; int inbih; scalar_t__ hic; TYPE_1__ ash; int hMMio; int * lpIndex; } ;
typedef int HDC ;
typedef int BOOL ;
typedef TYPE_2__ ANIMATE_INFO ;


 int ANIMATE_DoStop (TYPE_2__*) ;
 int ANIMATE_PaintFrame (TYPE_2__*,int ) ;
 int FALSE ;
 scalar_t__ ICERR_OK ;
 int SEEK_SET ;
 int TRACE (char*,size_t,int) ;
 int TRUE ;
 int WARN (char*) ;
 TYPE_3__ fnIC ;
 int mmioRead (int ,int ,int ) ;
 int mmioSeek (int ,int ,int ) ;
 scalar_t__ stub1 (scalar_t__,int ,int ,int ,int ,int ) ;

__attribute__((used)) static BOOL ANIMATE_DrawFrame(ANIMATE_INFO *infoPtr, HDC hDC)
{
    TRACE("Drawing frame %d (loop %d)\n", infoPtr->currFrame, infoPtr->nLoop);

    mmioSeek(infoPtr->hMMio, infoPtr->lpIndex[infoPtr->currFrame], SEEK_SET);
    mmioRead(infoPtr->hMMio, infoPtr->indata, infoPtr->ash.dwSuggestedBufferSize);

    if (infoPtr->hic &&
 fnIC.fnICDecompress(infoPtr->hic, 0, infoPtr->inbih, infoPtr->indata,
       infoPtr->outbih, infoPtr->outdata) != ICERR_OK) {
 WARN("Decompression error\n");
 return FALSE;
    }

    ANIMATE_PaintFrame(infoPtr, hDC);

    if (infoPtr->currFrame++ >= infoPtr->nToFrame) {
 infoPtr->currFrame = infoPtr->nFromFrame;
 if (infoPtr->nLoop != -1) {
     if (--infoPtr->nLoop == 0) {
  ANIMATE_DoStop(infoPtr);
     }
 }
    }

    return TRUE;
}
