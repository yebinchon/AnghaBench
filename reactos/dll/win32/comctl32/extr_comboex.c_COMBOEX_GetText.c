
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int nmce ;
typedef int WCHAR ;
struct TYPE_11__ {int * pszText; int * pszTemp; int lParam; } ;
struct TYPE_9__ {int mask; int * pszText; int iItem; int lParam; } ;
struct TYPE_10__ {TYPE_1__ ceItem; } ;
typedef TYPE_2__ NMCOMBOBOXEXW ;
typedef int * LPWSTR ;
typedef int LPSTR ;
typedef int * LPCWSTR ;
typedef int INT ;
typedef int COMBOEX_INFO ;
typedef TYPE_3__ CBE_ITEMDATA ;


 int * Alloc (int) ;
 int CBEIF_DI_SETITEM ;
 int CBEIF_TEXT ;
 int CBEN_GETDISPINFOW ;
 int COMBOEX_FreeText (TYPE_3__*) ;
 int COMBOEX_GetIndex (int const*,TYPE_3__*) ;
 int COMBOEX_NotifyItem (int const*,int ,TYPE_2__*) ;
 int CP_ACP ;
 int Free (int *) ;
 int * LPSTR_TEXTCALLBACKW ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int ZeroMemory (TYPE_2__*,int) ;
 scalar_t__ is_textW (int *) ;

__attribute__((used)) static LPCWSTR COMBOEX_GetText(const COMBOEX_INFO *infoPtr, CBE_ITEMDATA *item)
{
    NMCOMBOBOXEXW nmce;
    LPWSTR text, buf;
    INT len;

    if (item->pszText != LPSTR_TEXTCALLBACKW)
 return item->pszText;

    ZeroMemory(&nmce, sizeof(nmce));
    nmce.ceItem.mask = CBEIF_TEXT;
    nmce.ceItem.lParam = item->lParam;
    nmce.ceItem.iItem = COMBOEX_GetIndex(infoPtr, item);
    COMBOEX_NotifyItem(infoPtr, CBEN_GETDISPINFOW, &nmce);

    if (is_textW(nmce.ceItem.pszText)) {
 len = MultiByteToWideChar (CP_ACP, 0, (LPSTR)nmce.ceItem.pszText, -1, ((void*)0), 0);
        buf = Alloc ((len + 1)*sizeof(WCHAR));
 if (buf)
     MultiByteToWideChar (CP_ACP, 0, (LPSTR)nmce.ceItem.pszText, -1, buf, len);
 if (nmce.ceItem.mask & CBEIF_DI_SETITEM) {
     COMBOEX_FreeText(item);
     item->pszText = buf;
 } else {
     Free(item->pszTemp);
     item->pszTemp = buf;
 }
 text = buf;
    } else
 text = nmce.ceItem.pszText;

    if (nmce.ceItem.mask & CBEIF_DI_SETITEM)
 item->pszText = text;
    return text;
}
