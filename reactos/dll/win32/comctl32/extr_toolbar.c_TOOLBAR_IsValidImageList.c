
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TOOLBAR_INFO ;
typedef int INT ;
typedef int * HIMAGELIST ;
typedef int BOOL ;


 int * GETDEFIMAGELIST (int const*,int ) ;
 int GETHIMLID (int const*,int ) ;
 scalar_t__ ImageList_GetImageCount (int *) ;

__attribute__((used)) static inline BOOL
TOOLBAR_IsValidImageList(const TOOLBAR_INFO *infoPtr, INT index)
{
    HIMAGELIST himl = GETDEFIMAGELIST(infoPtr, GETHIMLID(infoPtr, index));
    return (himl != ((void*)0)) && (ImageList_GetImageCount(himl) > 0);
}
