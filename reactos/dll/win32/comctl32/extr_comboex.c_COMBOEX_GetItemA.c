
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mask; int lParam; int iIndent; int iOverlay; int iSelectedImage; int iImage; scalar_t__* pszText; int cchTextMax; int iItem; } ;
struct TYPE_5__ {int mask; int lParam; int iIndent; int iOverlay; int iSelectedImage; int iImage; scalar_t__ pszText; int iItem; } ;
typedef scalar_t__* LPSTR ;
typedef int COMBOEX_INFO ;
typedef TYPE_1__ COMBOBOXEXITEMW ;
typedef TYPE_2__ COMBOBOXEXITEMA ;
typedef int BOOL ;


 int CBEIF_IMAGE ;
 int CBEIF_INDENT ;
 int CBEIF_LPARAM ;
 int CBEIF_OVERLAY ;
 int CBEIF_SELECTEDIMAGE ;
 int CBEIF_TEXT ;
 int COMBOEX_GetItemW (int *,TYPE_1__*) ;
 int CP_ACP ;
 int FALSE ;
 int TRACE (char*) ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,scalar_t__*,int ,int *,int *) ;
 scalar_t__ is_textW (scalar_t__) ;

__attribute__((used)) static BOOL COMBOEX_GetItemA (COMBOEX_INFO *infoPtr, COMBOBOXEXITEMA *cit)
{
    COMBOBOXEXITEMW tmpcit;

    TRACE("\n");

    tmpcit.mask = cit->mask;
    tmpcit.iItem = cit->iItem;
    tmpcit.pszText = 0;
    if(!COMBOEX_GetItemW (infoPtr, &tmpcit)) return FALSE;

    if (cit->mask & CBEIF_TEXT)
    {
        if (is_textW(tmpcit.pszText) && cit->pszText)
            WideCharToMultiByte(CP_ACP, 0, tmpcit.pszText, -1,
                                cit->pszText, cit->cchTextMax, ((void*)0), ((void*)0));
        else if (cit->pszText) cit->pszText[0] = 0;
        else cit->pszText = (LPSTR)tmpcit.pszText;
    }

    if (cit->mask & CBEIF_IMAGE)
        cit->iImage = tmpcit.iImage;
    if (cit->mask & CBEIF_SELECTEDIMAGE)
        cit->iSelectedImage = tmpcit.iSelectedImage;
    if (cit->mask & CBEIF_OVERLAY)
        cit->iOverlay = tmpcit.iOverlay;
    if (cit->mask & CBEIF_INDENT)
        cit->iIndent = tmpcit.iIndent;
    if (cit->mask & CBEIF_LPARAM)
        cit->lParam = tmpcit.lParam;

    return TRUE;
}
