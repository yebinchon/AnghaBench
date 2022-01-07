
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mask; scalar_t__ pszText; } ;
struct TYPE_6__ {scalar_t__ nNotifyFormat; } ;
typedef int * LPVOID ;
typedef int LPSTR ;
typedef TYPE_1__ HEADER_INFO ;
typedef TYPE_2__ HDITEMW ;
typedef scalar_t__ BOOL ;


 int HDI_TEXT ;
 scalar_t__ LPSTR_TEXTCALLBACKW ;
 scalar_t__ NFR_UNICODE ;
 int Str_SetPtrAtoW (int **,int ) ;
 int Str_SetPtrWtoA (int *,int *) ;

__attribute__((used)) static void HEADER_CopyHDItemForNotify(const HEADER_INFO *infoPtr, HDITEMW *dest,
    const HDITEMW *src, BOOL fSourceUnicode, LPVOID *ppvScratch)
{
    *ppvScratch = ((void*)0);
    *dest = *src;

    if (src->mask & HDI_TEXT && src->pszText != LPSTR_TEXTCALLBACKW)
    {
        if (fSourceUnicode && infoPtr->nNotifyFormat != NFR_UNICODE)
        {
            dest->pszText = ((void*)0);
            Str_SetPtrWtoA((LPSTR *)&dest->pszText, src->pszText);
            *ppvScratch = dest->pszText;
        }

        if (!fSourceUnicode && infoPtr->nNotifyFormat == NFR_UNICODE)
        {
            dest->pszText = ((void*)0);
            Str_SetPtrAtoW(&dest->pszText, (LPSTR)src->pszText);
            *ppvScratch = dest->pszText;
        }
    }
}
