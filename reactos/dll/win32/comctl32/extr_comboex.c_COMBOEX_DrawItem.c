
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_13__ ;


typedef int nmce ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_38__ {int mask; int iIndent; int iImage; int iSelectedImage; int iOverlay; int lParam; scalar_t__ pszText; } ;
struct TYPE_37__ {int selected; int flags; int dwExtStyle; scalar_t__ hwndEdit; scalar_t__ himl; TYPE_9__ edit; scalar_t__ hwndCombo; scalar_t__ hwndSelf; } ;
struct TYPE_33__ {int top; int bottom; int left; int right; } ;
struct TYPE_36__ {scalar_t__ CtlType; int itemID; int itemAction; int itemState; int hDC; TYPE_4__ rcItem; int itemData; int hwndItem; int CtlID; } ;
struct TYPE_30__ {int left; int right; } ;
struct TYPE_35__ {TYPE_1__ rcImage; } ;
struct TYPE_31__ {int mask; int iItem; int iIndent; int iImage; int iSelectedImage; int iOverlay; int lParam; } ;
struct TYPE_34__ {TYPE_2__ ceItem; } ;
struct TYPE_32__ {int cy; int cx; } ;
struct TYPE_29__ {int clrWindowText; int clrHighlightText; int clrWindow; int clrHighlight; } ;
typedef TYPE_3__ SIZE ;
typedef TYPE_4__ RECT ;
typedef TYPE_5__ NMCOMBOBOXEXW ;
typedef int LRESULT ;
typedef int const* LPCWSTR ;
typedef int INT ;
typedef TYPE_6__ IMAGEINFO ;
typedef TYPE_7__ DRAWITEMSTRUCT ;
typedef TYPE_8__ COMBOEX_INFO ;
typedef int COLORREF ;
typedef TYPE_9__ CBE_ITEMDATA ;


 scalar_t__ Alloc (int) ;
 int CBEIF_DI_SETITEM ;
 int CBEIF_IMAGE ;
 int CBEIF_INDENT ;
 int CBEIF_OVERLAY ;
 int CBEIF_SELECTEDIMAGE ;
 int CBEIF_TEXT ;
 int CBEN_GETDISPINFOW ;
 int CBES_EX_NOEDITIMAGE ;
 int CBES_EX_NOEDITIMAGEINDENT ;
 int CBE_INDENT ;
 int CBE_SEP ;
 int CBE_STARTOFFSET ;
 scalar_t__ CB_ERR ;
 int COMBOEX_DumpItem (TYPE_9__*) ;
 int COMBOEX_FreeText (TYPE_9__*) ;
 int const* COMBOEX_GetText (TYPE_8__*,TYPE_9__*) ;
 int COMBOEX_NotifyItem (TYPE_8__*,int ,TYPE_5__*) ;
 int DrawFocusRect (int ,TYPE_4__*) ;
 int ERR (char*,int,...) ;
 int ETO_CLIPPED ;
 int ETO_OPAQUE ;
 int ExtTextOutW (int ,int,int,int,TYPE_4__*,int const*,int,int ) ;
 int GetTextExtentPoint32W (int ,int const*,int,TYPE_3__*) ;
 int GetWindowRect (scalar_t__,TYPE_4__*) ;
 int GetWindowTextLengthW (scalar_t__) ;
 int GetWindowTextW (scalar_t__,scalar_t__,int) ;
 int ILD_NORMAL ;
 int ILD_SELECTED ;
 int INDEXTOOVERLAYMASK (int) ;
 int I_IMAGECALLBACK ;
 int I_INDENTCALLBACK ;
 int ImageList_Draw (scalar_t__,int,int ,int,int,int) ;
 int ImageList_GetImageInfo (scalar_t__,int ,TYPE_6__*) ;
 int ImageList_SetOverlayImage (scalar_t__,int,int) ;
 scalar_t__ IsWindowVisible (scalar_t__) ;
 int ODA_DRAWENTIRE ;
 int ODA_FOCUS ;
 int ODA_SELECT ;
 int ODS_COMBOEXLBOX ;
 int ODS_FOCUS ;
 int ODS_SELECTED ;
 scalar_t__ ODT_COMBOBOX ;
 int SetBkColor (int ,int ) ;
 int SetRect (TYPE_4__*,int,int,int,int) ;
 int SetTextColor (int ,int ) ;
 int TRACE (char*,scalar_t__,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int WCBE_EDITFOCUSED ;
 int ZeroMemory (TYPE_5__*,int) ;
 int comboex ;
 TYPE_13__ comctl32_color ;
 int debugstr_txt (scalar_t__) ;
 TYPE_9__* get_item_data (TYPE_8__*,int) ;
 int strlenW (int const*) ;
 int wine_dbgstr_rect (TYPE_4__*) ;

__attribute__((used)) static LRESULT COMBOEX_DrawItem (COMBOEX_INFO *infoPtr, DRAWITEMSTRUCT const *dis)
{
    static const WCHAR nil[] = { 0 };
    CBE_ITEMDATA *item = ((void*)0);
    SIZE txtsize;
    RECT rect;
    LPCWSTR str = nil;
    UINT xbase, x, y;
    INT len;
    COLORREF nbkc, ntxc, bkc, txc;
    int drawimage, drawstate, xioff, selected;

    TRACE("DRAWITEMSTRUCT: CtlType=0x%08x CtlID=0x%08x\n",
   dis->CtlType, dis->CtlID);
    TRACE("itemID=0x%08x itemAction=0x%08x itemState=0x%08x\n",
   dis->itemID, dis->itemAction, dis->itemState);
    TRACE("hWnd=%p hDC=%p (%s) itemData=0x%08lx\n",
          dis->hwndItem, dis->hDC, wine_dbgstr_rect(&dis->rcItem), dis->itemData);
    if (dis->itemID == 0xffffffff) {
 if ( ( (dis->itemAction & ODA_FOCUS) && (dis->itemState & ODS_SELECTED)) ||
      ( (dis->itemAction & (ODA_SELECT | ODA_DRAWENTIRE)) && (dis->itemState & ODS_FOCUS) ) ) {

            TRACE("drawing item -1 special focus, rect=(%s)\n",
                  wine_dbgstr_rect(&dis->rcItem));
 }
 else if ((dis->CtlType == ODT_COMBOBOX) &&
   (dis->itemAction == ODA_DRAWENTIRE)) {


     if (TRACE_ON(comboex)) {
  RECT exrc, cbrc, edrc;
  GetWindowRect (infoPtr->hwndSelf, &exrc);
  GetWindowRect (infoPtr->hwndCombo, &cbrc);
                SetRect(&edrc, -1, -1, -1, -1);
  if (infoPtr->hwndEdit) GetWindowRect (infoPtr->hwndEdit, &edrc);
                TRACE("window rects ex=(%s), cb=(%s), ed=(%s)\n",
                      wine_dbgstr_rect(&exrc), wine_dbgstr_rect(&cbrc),
                      wine_dbgstr_rect(&edrc));
     }
 }
 else {
            ERR("NOT drawing item  -1 special focus, rect=(%s), action=%08x, state=%08x\n",
                wine_dbgstr_rect(&dis->rcItem),
                dis->itemAction, dis->itemState);
     return 0;
 }
    }


    if (dis->itemID == 0xffffffff) {
        item = &infoPtr->edit;

 if (infoPtr->hwndEdit) {

     COMBOEX_FreeText(item);
     item->mask &= ~CBEIF_TEXT;
     if( (len = GetWindowTextLengthW(infoPtr->hwndEdit)) ) {
  item->mask |= CBEIF_TEXT;
                item->pszText = Alloc ((len + 1)*sizeof(WCHAR));
  if (item->pszText)
      GetWindowTextW(infoPtr->hwndEdit, item->pszText, len+1);

        TRACE("edit control hwndEdit=%p, text len=%d str=%s\n",
       infoPtr->hwndEdit, len, debugstr_txt(item->pszText));
     }
 }
    }



    if (!item) {
        item = get_item_data(infoPtr, dis->itemID);
 if (item == (CBE_ITEMDATA *)CB_ERR) {
     ERR("invalid item for id %d\n", dis->itemID);
     return 0;
 }
    }

    if (TRACE_ON(comboex)) COMBOEX_DumpItem (item);

    xbase = CBE_STARTOFFSET;
    if ((item->mask & CBEIF_INDENT) && (dis->itemState & ODS_COMBOEXLBOX)) {
 INT indent = item->iIndent;
 if (indent == I_INDENTCALLBACK) {
     NMCOMBOBOXEXW nmce;
     ZeroMemory(&nmce, sizeof(nmce));
     nmce.ceItem.mask = CBEIF_INDENT;
     nmce.ceItem.lParam = item->lParam;
     nmce.ceItem.iItem = dis->itemID;
     COMBOEX_NotifyItem(infoPtr, CBEN_GETDISPINFOW, &nmce);
     if (nmce.ceItem.mask & CBEIF_DI_SETITEM)
  item->iIndent = nmce.ceItem.iIndent;
     indent = nmce.ceItem.iIndent;
 }
        xbase += (indent * CBE_INDENT);
    }

    drawimage = -2;
    drawstate = ILD_NORMAL;
    selected = infoPtr->selected == dis->itemID;

    if (item->mask & CBEIF_IMAGE)
 drawimage = item->iImage;
    if (item->mask & CBEIF_SELECTEDIMAGE && selected)
        drawimage = item->iSelectedImage;
    if (dis->itemState & ODS_COMBOEXLBOX) {

 if (dis->itemState & ODS_SELECTED)
     drawstate = ILD_SELECTED;
    } else {

 if (IsWindowVisible(infoPtr->hwndEdit)) {



     if (infoPtr->flags & WCBE_EDITFOCUSED)
  drawstate = ILD_SELECTED;
 } else



     if (dis->itemState & ODS_SELECTED)
  drawstate = ILD_SELECTED;
    }

    if (infoPtr->himl && !(infoPtr->dwExtStyle & CBES_EX_NOEDITIMAGEINDENT)) {
     IMAGEINFO iinfo;
        iinfo.rcImage.left = iinfo.rcImage.right = 0;
 ImageList_GetImageInfo(infoPtr->himl, 0, &iinfo);
 xioff = iinfo.rcImage.right - iinfo.rcImage.left + CBE_SEP;
    } else xioff = 0;


    str = COMBOEX_GetText(infoPtr, item);
    if (!str) str = nil;

    len = strlenW (str);
    GetTextExtentPoint32W (dis->hDC, str, len, &txtsize);

    if (dis->itemAction & (ODA_SELECT | ODA_DRAWENTIRE)) {
 int overlay = item->iOverlay;

     if (drawimage == I_IMAGECALLBACK) {
     NMCOMBOBOXEXW nmce;
     ZeroMemory(&nmce, sizeof(nmce));
     nmce.ceItem.mask = selected ? CBEIF_SELECTEDIMAGE : CBEIF_IMAGE;
     nmce.ceItem.lParam = item->lParam;
     nmce.ceItem.iItem = dis->itemID;
     COMBOEX_NotifyItem(infoPtr, CBEN_GETDISPINFOW, &nmce);
     if (!selected) {
      if (nmce.ceItem.mask & CBEIF_DI_SETITEM) item->iImage = nmce.ceItem.iImage;
      drawimage = nmce.ceItem.iImage;
     } else {
         if (nmce.ceItem.mask & CBEIF_DI_SETITEM) item->iSelectedImage = nmce.ceItem.iSelectedImage;
                drawimage = nmce.ceItem.iSelectedImage;
     }
        }

 if (overlay == I_IMAGECALLBACK) {
     NMCOMBOBOXEXW nmce;
     ZeroMemory(&nmce, sizeof(nmce));
     nmce.ceItem.mask = CBEIF_OVERLAY;
     nmce.ceItem.lParam = item->lParam;
     nmce.ceItem.iItem = dis->itemID;
     COMBOEX_NotifyItem(infoPtr, CBEN_GETDISPINFOW, &nmce);
     if (nmce.ceItem.mask & CBEIF_DI_SETITEM)
  item->iOverlay = nmce.ceItem.iOverlay;
     overlay = nmce.ceItem.iOverlay;
 }

 if (drawimage >= 0 &&
     !(infoPtr->dwExtStyle & (CBES_EX_NOEDITIMAGE | CBES_EX_NOEDITIMAGEINDENT))) {
     if (overlay > 0) ImageList_SetOverlayImage (infoPtr->himl, overlay, 1);
     ImageList_Draw (infoPtr->himl, drawimage, dis->hDC, xbase, dis->rcItem.top,
       drawstate | (overlay > 0 ? INDEXTOOVERLAYMASK(1) : 0));
 }


 if (!IsWindowVisible (infoPtr->hwndEdit)) {
     nbkc = (dis->itemState & ODS_SELECTED) ?
             comctl32_color.clrHighlight : comctl32_color.clrWindow;
     bkc = SetBkColor (dis->hDC, nbkc);
     ntxc = (dis->itemState & ODS_SELECTED) ?
             comctl32_color.clrHighlightText : comctl32_color.clrWindowText;
     txc = SetTextColor (dis->hDC, ntxc);
     x = xbase + xioff;
     y = dis->rcItem.top +
         (dis->rcItem.bottom - dis->rcItem.top - txtsize.cy) / 2;
            SetRect(&rect, x, dis->rcItem.top + 1, x + txtsize.cx, dis->rcItem.bottom - 1);
            TRACE("drawing item %d text, rect=(%s)\n",
                  dis->itemID, wine_dbgstr_rect(&rect));
     ExtTextOutW (dis->hDC, x, y, ETO_OPAQUE | ETO_CLIPPED,
           &rect, str, len, 0);
     SetBkColor (dis->hDC, bkc);
     SetTextColor (dis->hDC, txc);
 }
    }

    if (dis->itemAction & ODA_FOCUS) {
 rect.left = xbase + xioff - 1;
 rect.right = rect.left + txtsize.cx + 2;
 rect.top = dis->rcItem.top;
 rect.bottom = dis->rcItem.bottom;
 DrawFocusRect(dis->hDC, &rect);
    }

    return 0;
}
