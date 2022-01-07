
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WORD ;
typedef int WNDPROC ;
typedef int UINT ;
struct TYPE_12__ {int hwndOwner; int lpfnHook; int rgbResult; int * lpCustColors; } ;
struct TYPE_11__ {int h; int s; int l; int nextuserdef; int hwndSelf; TYPE_8__* lpcc; int fullsize; int updating; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HDC ;
typedef int COLORREF ;
typedef TYPE_1__ CCPRIV ;


 int CC_CheckDigitsInEdit (int ,int) ;
 int CC_EditSetHSL (TYPE_1__*) ;
 int CC_EditSetRGB (TYPE_1__*) ;
 int CC_HSLtoRGB (int,int,int) ;
 int CC_HookCallChk (TYPE_8__*) ;
 int CC_PaintCross (TYPE_1__*) ;
 int CC_PaintSelectedColor (TYPE_1__*) ;
 int CC_PaintTriangle (TYPE_1__*) ;
 int CC_PaintUserColorArray (TYPE_1__*,int,int) ;
 void* CC_RGBtoHSL (char,int ) ;
 int CC_SwitchToFullSize (TYPE_1__*,int *) ;
 int COLOROKSTRINGA ;
 int CallWindowProcA (int ,int ,int ,int ,int ) ;
 int EN_UPDATE ;
 int EndDialog (int ,int) ;
 int FALSE ;
 int GetBValue (int ) ;
 int GetDC (int ) ;
 int GetDlgItem (int ,int const) ;
 int GetGValue (int ) ;
 int GetNearestColor (int ,int ) ;
 int GetRValue (int ) ;
 int HELPMSGSTRINGA ;
 int LOWORD (int ) ;
 int RGB (int,int,int) ;
 int RegisterWindowMessageA (int ) ;
 int ReleaseDC (int ,int ) ;
 int SendMessageA (int ,int,int ,int ) ;
 int SetFocus (int ) ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int WM_COMMAND ;
 int psh15 ;


__attribute__((used)) static LRESULT CC_WMCommand(CCPRIV *lpp, WPARAM wParam, LPARAM lParam, WORD notifyCode, HWND hwndCtl)
{
    int r, g, b, i, xx;
    UINT cokmsg;
    HDC hdc;
    COLORREF *cr;

    TRACE("CC_WMCommand wParam=%lx lParam=%lx\n", wParam, lParam);
    switch (LOWORD(wParam))
    {
        case 132:
        case 135:
        case 136:
        if (notifyCode == EN_UPDATE && !lpp->updating)
    {
      i = CC_CheckDigitsInEdit(hwndCtl, 255);
      r = GetRValue(lpp->lpcc->rgbResult);
      g = GetGValue(lpp->lpcc->rgbResult);
      b= GetBValue(lpp->lpcc->rgbResult);
      xx = 0;
      switch (LOWORD(wParam))
      {
       case 132: if ((xx = (i != r))) r = i; break;
       case 135: if ((xx = (i != g))) g = i; break;
       case 136: if ((xx = (i != b))) b = i; break;
      }
      if (xx)
      {
       lpp->lpcc->rgbResult = RGB(r, g, b);
       CC_PaintSelectedColor(lpp);
       lpp->h = CC_RGBtoHSL('H', lpp->lpcc->rgbResult);
       lpp->s = CC_RGBtoHSL('S', lpp->lpcc->rgbResult);
       lpp->l = CC_RGBtoHSL('L', lpp->lpcc->rgbResult);
       CC_EditSetHSL(lpp);
       CC_PaintCross(lpp);
       CC_PaintTriangle(lpp);
      }
    }
   break;

        case 134:
        case 131:
        case 133:
        if (notifyCode == EN_UPDATE && !lpp->updating)
    {
      i = CC_CheckDigitsInEdit(hwndCtl , LOWORD(wParam) == 134 ? 239 : 240);
      xx = 0;
      switch (LOWORD(wParam))
      {
       case 134: if ((xx = ( i != lpp->h))) lpp->h = i; break;
       case 131: if ((xx = ( i != lpp->s))) lpp->s = i; break;
       case 133: if ((xx = ( i != lpp->l))) lpp->l = i; break;
      }
      if (xx)
      {
       lpp->lpcc->rgbResult = CC_HSLtoRGB(lpp->h, lpp->s, lpp->l);
       CC_PaintSelectedColor(lpp);
       CC_EditSetRGB(lpp);
       CC_PaintCross(lpp);
       CC_PaintTriangle(lpp);
      }
    }
        break;

        case 137:
               CC_SwitchToFullSize(lpp, &lpp->fullsize);
        SetFocus( GetDlgItem(lpp->hwndSelf, 134));
        break;

        case 138:
               cr = lpp->lpcc->lpCustColors;
               cr[(lpp->nextuserdef % 2) * 8 + lpp->nextuserdef / 2] = lpp->lpcc->rgbResult;
               if (++lpp->nextuserdef == 16)
     lpp->nextuserdef = 0;
        CC_PaintUserColorArray(lpp, 2, 8);
        break;

        case 130:
        hdc = GetDC(lpp->hwndSelf);
        lpp->lpcc->rgbResult = GetNearestColor(hdc, lpp->lpcc->rgbResult);
        ReleaseDC(lpp->hwndSelf, hdc);
        CC_EditSetRGB(lpp);
        CC_PaintSelectedColor(lpp);
        lpp->h = CC_RGBtoHSL('H', lpp->lpcc->rgbResult);
        lpp->s = CC_RGBtoHSL('S', lpp->lpcc->rgbResult);
        lpp->l = CC_RGBtoHSL('L', lpp->lpcc->rgbResult);
        CC_EditSetHSL(lpp);
        CC_PaintCross(lpp);
        CC_PaintTriangle(lpp);
        break;

   case 128:
        i = RegisterWindowMessageA(HELPMSGSTRINGA);
                   if (lpp->lpcc->hwndOwner)
         SendMessageA(lpp->lpcc->hwndOwner, i, 0, (LPARAM)lpp->lpcc);
                   if ( CC_HookCallChk(lpp->lpcc))
         CallWindowProcA( (WNDPROC) lpp->lpcc->lpfnHook, lpp->hwndSelf,
            WM_COMMAND, psh15, (LPARAM)lpp->lpcc);
        break;

          case 129 :
  cokmsg = RegisterWindowMessageA(COLOROKSTRINGA);
      if (lpp->lpcc->hwndOwner)
   if (SendMessageA(lpp->lpcc->hwndOwner, cokmsg, 0, (LPARAM)lpp->lpcc))
   break;
  EndDialog(lpp->hwndSelf, 1) ;
  return TRUE ;

   case 139 :
  EndDialog(lpp->hwndSelf, 0) ;
  return TRUE ;

       }
       return FALSE;
}
