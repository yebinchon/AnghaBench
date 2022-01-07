
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ iBitmap; } ;
struct TYPE_12__ {int nNumBitmaps; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ TBUTTON_INFO ;
typedef scalar_t__ INT ;
typedef int IMAGE_LIST_TYPE ;
typedef int * HIMAGELIST ;


 int ERR (char*,scalar_t__) ;
 int FIXME (char*) ;
 int * GETDEFIMAGELIST (TYPE_1__ const*,int ) ;
 int * GETDISIMAGELIST (TYPE_1__ const*,int ) ;
 int GETHIMLID (TYPE_1__ const*,scalar_t__) ;
 int * GETHOTIMAGELIST (TYPE_1__ const*,int ) ;
 int HIWORD (scalar_t__) ;



 scalar_t__ I_IMAGECALLBACK ;
 scalar_t__ I_IMAGENONE ;
 int LOWORD (scalar_t__) ;
 scalar_t__ TOOLBAR_GetBitmapIndex (TYPE_1__ const*,TYPE_2__*) ;
 int TOOLBAR_IsValidBitmapIndex (TYPE_1__ const*,scalar_t__) ;
 int TRACE (char*) ;
 int WARN (char*,int ,int ,int ) ;

__attribute__((used)) static HIMAGELIST
TOOLBAR_GetImageListForDrawing (const TOOLBAR_INFO *infoPtr, TBUTTON_INFO *btnPtr,
                                IMAGE_LIST_TYPE imagelist, INT * index)
{
    HIMAGELIST himl;

    if (!TOOLBAR_IsValidBitmapIndex(infoPtr,btnPtr->iBitmap)) {
 if (btnPtr->iBitmap == I_IMAGENONE) return ((void*)0);
 WARN("bitmap for ID %d, index %d is not valid, number of bitmaps in imagelist: %d\n",
     HIWORD(btnPtr->iBitmap), LOWORD(btnPtr->iBitmap), infoPtr->nNumBitmaps);
 return ((void*)0);
    }

    if ((*index = TOOLBAR_GetBitmapIndex(infoPtr, btnPtr)) < 0) {
 if ((*index == I_IMAGECALLBACK) ||
     (*index == I_IMAGENONE)) return ((void*)0);
 ERR("TBN_GETDISPINFO returned invalid index %d\n",
     *index);
 return ((void*)0);
    }

    switch(imagelist)
    {
    case 130:
        himl = GETDEFIMAGELIST(infoPtr, GETHIMLID(infoPtr, btnPtr->iBitmap));
        break;
    case 128:
        himl = GETHOTIMAGELIST(infoPtr, GETHIMLID(infoPtr, btnPtr->iBitmap));
        break;
    case 129:
        himl = GETDISIMAGELIST(infoPtr, GETHIMLID(infoPtr, btnPtr->iBitmap));
        break;
    default:
        himl = ((void*)0);
        FIXME("Shouldn't reach here\n");
    }

    if (!himl)
       TRACE("no image list\n");

    return himl;
}
