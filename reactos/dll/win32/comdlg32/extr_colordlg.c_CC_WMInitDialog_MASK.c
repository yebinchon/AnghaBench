#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WNDPROC ;
struct TYPE_16__ {int bottom; int top; } ;
struct TYPE_19__ {int h; int s; int l; TYPE_3__* lpcc; TYPE_1__ fullsize; int /*<<< orphan*/  msetrgb; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_18__ {int lStructSize; int Flags; scalar_t__ rgbResult; scalar_t__ lpfnHook; } ;
struct TYPE_17__ {scalar_t__ x; scalar_t__ y; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  int LRESULT ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_3__ CHOOSECOLORW ;
typedef  TYPE_4__ CCPRIV ;

/* Variables and functions */
 int CC_FULLOPEN ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int CC_PREVENTFULLOPEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int CC_RGBINIT ; 
 void* FUNC4 (char,scalar_t__) ; 
 int CC_SHOWHELP ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  EM_LIMITTEXT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
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
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SETRGBSTRINGA ; 
 int /*<<< orphan*/  SM_CXDLGFRAME ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,scalar_t__) ; 
 int TRUE ; 
 int /*<<< orphan*/  WM_INITDIALOG ; 
 int /*<<< orphan*/  cpos ; 
 TYPE_4__* FUNC26 (int) ; 
 int j ; 
 scalar_t__** predefcolors ; 
 int pshHelp ; 
 int /*<<< orphan*/  szColourDialogProp ; 

__attribute__((used)) static LRESULT FUNC27( HWND hDlg, WPARAM wParam, LPARAM lParam )
{
   CHOOSECOLORW *cc = (CHOOSECOLORW*)lParam;
   int i, res;
   int r, g, b;
   HWND hwnd;
   RECT rect;
   POINT point;
   CCPRIV *lpp;

   FUNC25("WM_INITDIALOG lParam=%08lX\n", lParam);

   if (cc->lStructSize != sizeof(CHOOSECOLORW))
   {
       FUNC9(hDlg, 0);
       return FALSE;
   }

   lpp = FUNC26(sizeof(*lpp));
   lpp->lpcc = cc;
   lpp->hwndSelf = hDlg;

   FUNC22( hDlg, szColourDialogProp, lpp );

   if (!(lpp->lpcc->Flags & CC_SHOWHELP))
      FUNC24(FUNC12(hDlg, pshHelp), SW_HIDE);
   lpp->msetrgb = FUNC18(SETRGBSTRINGA);

#if 0
   cpos = MAKELONG(5,7); /* init */
   if (lpp->lpcc->Flags & CC_RGBINIT)
   {
     for (i = 0; i < 6; i++)
       for (j = 0; j < 8; j++)
        if (predefcolors[i][j] == lpp->lpcc->rgbResult)
        {
          cpos = MAKELONG(i,j);
          goto found;
        }
   }
   found:
   /* FIXME: Draw_a_focus_rect & set_init_values */
#endif

   FUNC16(hDlg, &lpp->fullsize);
   if (lpp->lpcc->Flags & CC_FULLOPEN || lpp->lpcc->Flags & CC_PREVENTFULLOPEN)
   {
      hwnd = FUNC12(hDlg, IDC_COLOR_DEFINE);
      FUNC8(hwnd, FALSE);
   }
   if (!(lpp->lpcc->Flags & CC_FULLOPEN ) || lpp->lpcc->Flags & CC_PREVENTFULLOPEN)
   {
      rect = lpp->fullsize;
      res = rect.bottom - rect.top;
      hwnd = FUNC12(hDlg, IDC_COLOR_GRAPH); /* cut at left border */
      point.x = point.y = 0;
      FUNC7(hwnd, &point);
      FUNC19(hDlg,&point);
      FUNC11(hDlg, &rect);
      point.x += FUNC15(SM_CXDLGFRAME);
      FUNC23(hDlg, 0, 0, 0, point.x, res, SWP_NOMOVE|SWP_NOZORDER);

      for (i = IDC_COLOR_EDIT_H; i <= IDC_COLOR_EDIT_B; i++)
         FUNC24( FUNC12(hDlg, i), SW_HIDE);
      for (i = IDC_COLOR_HL; i <= IDC_COLOR_BL; i++)
         FUNC24( FUNC12(hDlg, i), SW_HIDE);
      FUNC24( FUNC12(hDlg, IDC_COLOR_RES), SW_HIDE);
      FUNC24( FUNC12(hDlg, IDC_COLOR_ADD), SW_HIDE);
      FUNC24( FUNC12(hDlg, IDC_COLOR_GRAPH), SW_HIDE);
      FUNC24( FUNC12(hDlg, IDC_COLOR_RESULT), SW_HIDE);
      FUNC24( FUNC12(hDlg, 1090 ), SW_HIDE);
   }
   else
      FUNC5(lpp, NULL);
   res = TRUE;
   for (i = IDC_COLOR_EDIT_H; i <= IDC_COLOR_EDIT_B; i++)
     FUNC20( FUNC12(hDlg, i), EM_LIMITTEXT, 3, 0);  /* max 3 digits:  xyz  */
   if (FUNC0(lpp->lpcc))
   {
          res = FUNC6( (WNDPROC)lpp->lpcc->lpfnHook, hDlg, WM_INITDIALOG, wParam, lParam);
   }

   /* Set the initial values of the color chooser dialog */
   r = FUNC14(lpp->lpcc->rgbResult);
   g = FUNC13(lpp->lpcc->rgbResult);
   b = FUNC10(lpp->lpcc->rgbResult);

   FUNC2(lpp);
   lpp->h = FUNC4('H', lpp->lpcc->rgbResult);
   lpp->s = FUNC4('S', lpp->lpcc->rgbResult);
   lpp->l = FUNC4('L', lpp->lpcc->rgbResult);

   /* Doing it the long way because CC_EditSetRGB/HSL doesn't seem to work */
   FUNC21(hDlg, IDC_COLOR_EDIT_H, lpp->h, TRUE);
   FUNC21(hDlg, IDC_COLOR_EDIT_S, lpp->s, TRUE);
   FUNC21(hDlg, IDC_COLOR_EDIT_L, lpp->l, TRUE);
   FUNC21(hDlg, IDC_COLOR_EDIT_R, r, TRUE);
   FUNC21(hDlg, IDC_COLOR_EDIT_G, g, TRUE);
   FUNC21(hDlg, IDC_COLOR_EDIT_B, b, TRUE);

   FUNC1(lpp);
   FUNC3(lpp);

   return res;
}