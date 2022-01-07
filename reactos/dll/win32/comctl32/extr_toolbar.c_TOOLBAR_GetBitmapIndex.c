
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int nmgd ;
struct TYPE_11__ {int dwMask; int iImage; int hdr; int lParam; int idCommand; } ;
struct TYPE_10__ {scalar_t__ iBitmap; int dwData; int idCommand; } ;
struct TYPE_9__ {int nNumBitmaps; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ TBUTTON_INFO ;
typedef TYPE_3__ NMTBDISPINFOW ;
typedef scalar_t__ INT ;


 scalar_t__ GETIBITMAP (TYPE_1__ const*,scalar_t__) ;
 scalar_t__ I_IMAGECALLBACK ;
 scalar_t__ I_IMAGENONE ;
 int TBNF_DI_SETITEM ;
 int TBNF_IMAGE ;
 int TBN_GETDISPINFOW ;
 int TOOLBAR_SendNotify (int *,TYPE_1__ const*,int ) ;
 int TRACE (char*,scalar_t__,int,int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static INT
TOOLBAR_GetBitmapIndex(const TOOLBAR_INFO *infoPtr, TBUTTON_INFO *btnPtr)
{
    INT ret = btnPtr->iBitmap;

    if (ret == I_IMAGECALLBACK)
    {

        NMTBDISPINFOW nmgd;

        memset(&nmgd, 0, sizeof(nmgd));
        nmgd.idCommand = btnPtr->idCommand;
        nmgd.lParam = btnPtr->dwData;
        nmgd.dwMask = TBNF_IMAGE;
        nmgd.iImage = -1;

        TOOLBAR_SendNotify(&nmgd.hdr, infoPtr, TBN_GETDISPINFOW);
        if (nmgd.dwMask & TBNF_DI_SETITEM)
            btnPtr->iBitmap = nmgd.iImage;
        ret = nmgd.iImage;
        TRACE("TBN_GETDISPINFO returned bitmap id %d, mask=%08x, nNumBitmaps=%d\n",
            ret, nmgd.dwMask, infoPtr->nNumBitmaps);
    }

    if (ret != I_IMAGENONE)
        ret = GETIBITMAP(infoPtr, ret);

    return ret;
}
