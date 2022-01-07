
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WNDPROC ;
struct TYPE_16__ {int bottom; int top; } ;
struct TYPE_19__ {int h; int s; int l; TYPE_3__* lpcc; TYPE_1__ fullsize; int msetrgb; int hwndSelf; } ;
struct TYPE_18__ {int lStructSize; int Flags; scalar_t__ rgbResult; scalar_t__ lpfnHook; } ;
struct TYPE_17__ {scalar_t__ x; scalar_t__ y; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int LRESULT ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef TYPE_3__ CHOOSECOLORW ;
typedef TYPE_4__ CCPRIV ;


 int CC_FULLOPEN ;
 scalar_t__ CC_HookCallChk (TYPE_3__*) ;
 int CC_PREVENTFULLOPEN ;
 int CC_PaintCross (TYPE_4__*) ;
 int CC_PaintSelectedColor (TYPE_4__*) ;
 int CC_PaintTriangle (TYPE_4__*) ;
 int CC_RGBINIT ;
 void* CC_RGBtoHSL (char,scalar_t__) ;
 int CC_SHOWHELP ;
 int CC_SwitchToFullSize (TYPE_4__*,int *) ;
 int CallWindowProcA (int ,int ,int ,int ,scalar_t__) ;
 int ClientToScreen (int ,TYPE_2__*) ;
 int EM_LIMITTEXT ;
 int EnableWindow (int ,int) ;
 int EndDialog (int ,int ) ;
 int FALSE ;
 int GetBValue (scalar_t__) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDlgItem (int ,int) ;
 int GetGValue (scalar_t__) ;
 int GetRValue (scalar_t__) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IDC_COLOR_ADD ;
 int IDC_COLOR_BL ;
 int IDC_COLOR_DEFINE ;
 int IDC_COLOR_EDIT_B ;
 int IDC_COLOR_EDIT_G ;
 int IDC_COLOR_EDIT_H ;
 int IDC_COLOR_EDIT_L ;
 int IDC_COLOR_EDIT_R ;
 int IDC_COLOR_EDIT_S ;
 int IDC_COLOR_GRAPH ;
 int IDC_COLOR_HL ;
 int IDC_COLOR_RES ;
 int IDC_COLOR_RESULT ;
 int MAKELONG (int,int) ;
 int RegisterWindowMessageA (int ) ;
 int SETRGBSTRINGA ;
 int SM_CXDLGFRAME ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 int SW_HIDE ;
 int ScreenToClient (int ,TYPE_2__*) ;
 int SendMessageA (int ,int ,int,int ) ;
 int SetDlgItemInt (int ,int,int,int) ;
 int SetPropW (int ,int ,TYPE_4__*) ;
 int SetWindowPos (int ,int ,int ,int ,scalar_t__,int,int) ;
 int ShowWindow (int ,int ) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 int WM_INITDIALOG ;
 int cpos ;
 TYPE_4__* heap_alloc_zero (int) ;
 int j ;
 scalar_t__** predefcolors ;
 int pshHelp ;
 int szColourDialogProp ;

__attribute__((used)) static LRESULT CC_WMInitDialog( HWND hDlg, WPARAM wParam, LPARAM lParam )
{
   CHOOSECOLORW *cc = (CHOOSECOLORW*)lParam;
   int i, res;
   int r, g, b;
   HWND hwnd;
   RECT rect;
   POINT point;
   CCPRIV *lpp;

   TRACE("WM_INITDIALOG lParam=%08lX\n", lParam);

   if (cc->lStructSize != sizeof(CHOOSECOLORW))
   {
       EndDialog(hDlg, 0);
       return FALSE;
   }

   lpp = heap_alloc_zero(sizeof(*lpp));
   lpp->lpcc = cc;
   lpp->hwndSelf = hDlg;

   SetPropW( hDlg, szColourDialogProp, lpp );

   if (!(lpp->lpcc->Flags & CC_SHOWHELP))
      ShowWindow(GetDlgItem(hDlg, pshHelp), SW_HIDE);
   lpp->msetrgb = RegisterWindowMessageA(SETRGBSTRINGA);
   GetWindowRect(hDlg, &lpp->fullsize);
   if (lpp->lpcc->Flags & CC_FULLOPEN || lpp->lpcc->Flags & CC_PREVENTFULLOPEN)
   {
      hwnd = GetDlgItem(hDlg, IDC_COLOR_DEFINE);
      EnableWindow(hwnd, FALSE);
   }
   if (!(lpp->lpcc->Flags & CC_FULLOPEN ) || lpp->lpcc->Flags & CC_PREVENTFULLOPEN)
   {
      rect = lpp->fullsize;
      res = rect.bottom - rect.top;
      hwnd = GetDlgItem(hDlg, IDC_COLOR_GRAPH);
      point.x = point.y = 0;
      ClientToScreen(hwnd, &point);
      ScreenToClient(hDlg,&point);
      GetClientRect(hDlg, &rect);
      point.x += GetSystemMetrics(SM_CXDLGFRAME);
      SetWindowPos(hDlg, 0, 0, 0, point.x, res, SWP_NOMOVE|SWP_NOZORDER);

      for (i = IDC_COLOR_EDIT_H; i <= IDC_COLOR_EDIT_B; i++)
         ShowWindow( GetDlgItem(hDlg, i), SW_HIDE);
      for (i = IDC_COLOR_HL; i <= IDC_COLOR_BL; i++)
         ShowWindow( GetDlgItem(hDlg, i), SW_HIDE);
      ShowWindow( GetDlgItem(hDlg, IDC_COLOR_RES), SW_HIDE);
      ShowWindow( GetDlgItem(hDlg, IDC_COLOR_ADD), SW_HIDE);
      ShowWindow( GetDlgItem(hDlg, IDC_COLOR_GRAPH), SW_HIDE);
      ShowWindow( GetDlgItem(hDlg, IDC_COLOR_RESULT), SW_HIDE);
      ShowWindow( GetDlgItem(hDlg, 1090 ), SW_HIDE);
   }
   else
      CC_SwitchToFullSize(lpp, ((void*)0));
   res = TRUE;
   for (i = IDC_COLOR_EDIT_H; i <= IDC_COLOR_EDIT_B; i++)
     SendMessageA( GetDlgItem(hDlg, i), EM_LIMITTEXT, 3, 0);
   if (CC_HookCallChk(lpp->lpcc))
   {
          res = CallWindowProcA( (WNDPROC)lpp->lpcc->lpfnHook, hDlg, WM_INITDIALOG, wParam, lParam);
   }


   r = GetRValue(lpp->lpcc->rgbResult);
   g = GetGValue(lpp->lpcc->rgbResult);
   b = GetBValue(lpp->lpcc->rgbResult);

   CC_PaintSelectedColor(lpp);
   lpp->h = CC_RGBtoHSL('H', lpp->lpcc->rgbResult);
   lpp->s = CC_RGBtoHSL('S', lpp->lpcc->rgbResult);
   lpp->l = CC_RGBtoHSL('L', lpp->lpcc->rgbResult);


   SetDlgItemInt(hDlg, IDC_COLOR_EDIT_H, lpp->h, TRUE);
   SetDlgItemInt(hDlg, IDC_COLOR_EDIT_S, lpp->s, TRUE);
   SetDlgItemInt(hDlg, IDC_COLOR_EDIT_L, lpp->l, TRUE);
   SetDlgItemInt(hDlg, IDC_COLOR_EDIT_R, r, TRUE);
   SetDlgItemInt(hDlg, IDC_COLOR_EDIT_G, g, TRUE);
   SetDlgItemInt(hDlg, IDC_COLOR_EDIT_B, b, TRUE);

   CC_PaintCross(lpp);
   CC_PaintTriangle(lpp);

   return res;
}
