
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TOOLBAR_INFO ;
typedef scalar_t__ INT ;
typedef int HIMAGELIST ;
typedef int BOOL ;


 int FALSE ;
 int GETDEFIMAGELIST (int const*,scalar_t__) ;
 scalar_t__ GETHIMLID (int const*,scalar_t__) ;
 scalar_t__ GETIBITMAP (int const*,scalar_t__) ;
 scalar_t__ I_IMAGECALLBACK ;
 scalar_t__ ImageList_GetImageCount (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL
TOOLBAR_IsValidBitmapIndex(const TOOLBAR_INFO *infoPtr, INT index)
{
    HIMAGELIST himl;
    INT id = GETHIMLID(infoPtr, index);
    INT iBitmap = GETIBITMAP(infoPtr, index);

    if (((himl = GETDEFIMAGELIST(infoPtr, id)) &&
        iBitmap >= 0 && iBitmap < ImageList_GetImageCount(himl)) ||
        (index == I_IMAGECALLBACK))
      return TRUE;
    else
      return FALSE;
}
