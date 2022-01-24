#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WNDPROC ;
typedef  int UINT ;
struct TYPE_12__ {int /*<<< orphan*/  hwndOwner; int /*<<< orphan*/  lpfnHook; int /*<<< orphan*/  rgbResult; int /*<<< orphan*/ * lpCustColors; } ;
struct TYPE_11__ {int h; int s; int l; int nextuserdef; int /*<<< orphan*/  hwndSelf; TYPE_8__* lpcc; int /*<<< orphan*/  fullsize; int /*<<< orphan*/  updating; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  TYPE_1__ CCPRIV ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 void* FUNC9 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  COLOROKSTRINGA ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EN_UPDATE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int const) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HELPMSGSTRINGA ; 
#define  IDCANCEL 139 
#define  IDC_COLOR_ADD 138 
#define  IDC_COLOR_DEFINE 137 
#define  IDC_COLOR_EDIT_B 136 
#define  IDC_COLOR_EDIT_G 135 
#define  IDC_COLOR_EDIT_H 134 
#define  IDC_COLOR_EDIT_L 133 
#define  IDC_COLOR_EDIT_R 132 
#define  IDC_COLOR_EDIT_S 131 
#define  IDC_COLOR_RES 130 
#define  IDOK 129 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int,int) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_COMMAND ; 
 int /*<<< orphan*/  psh15 ; 
#define  pshHelp 128 

__attribute__((used)) static LRESULT FUNC26(CCPRIV *lpp, WPARAM wParam, LPARAM lParam, WORD notifyCode, HWND hwndCtl)
{
    int  r, g, b, i, xx;
    UINT cokmsg;
    HDC hdc;
    COLORREF *cr;

    FUNC25("CC_WMCommand wParam=%lx lParam=%lx\n", wParam, lParam);
    switch (FUNC19(wParam))
    {
        case IDC_COLOR_EDIT_R:  /* edit notify RGB */
        case IDC_COLOR_EDIT_G:
        case IDC_COLOR_EDIT_B:
	       if (notifyCode == EN_UPDATE && !lpp->updating)
			 {
			   i = FUNC0(hwndCtl, 255);
			   r = FUNC18(lpp->lpcc->rgbResult);
			   g = FUNC16(lpp->lpcc->rgbResult);
			   b= FUNC13(lpp->lpcc->rgbResult);
			   xx = 0;
			   switch (FUNC19(wParam))
			   {
			    case IDC_COLOR_EDIT_R: if ((xx = (i != r))) r = i; break;
			    case IDC_COLOR_EDIT_G: if ((xx = (i != g))) g = i; break;
			    case IDC_COLOR_EDIT_B: if ((xx = (i != b))) b = i; break;
			   }
			   if (xx) /* something has changed */
			   {
			    lpp->lpcc->rgbResult = FUNC20(r, g, b);
			    FUNC6(lpp);
			    lpp->h = FUNC9('H', lpp->lpcc->rgbResult);
			    lpp->s = FUNC9('S', lpp->lpcc->rgbResult);
			    lpp->l = FUNC9('L', lpp->lpcc->rgbResult);
			    FUNC1(lpp);
			    FUNC5(lpp);
			    FUNC7(lpp);
			   }
			 }
		 break;

        case IDC_COLOR_EDIT_H:  /* edit notify HSL */
        case IDC_COLOR_EDIT_S:
        case IDC_COLOR_EDIT_L:
	       if (notifyCode == EN_UPDATE && !lpp->updating)
			 {
			   i = FUNC0(hwndCtl , FUNC19(wParam) == IDC_COLOR_EDIT_H ? 239 : 240);
			   xx = 0;
			   switch (FUNC19(wParam))
			   {
			    case IDC_COLOR_EDIT_H: if ((xx = ( i != lpp->h))) lpp->h = i; break;
			    case IDC_COLOR_EDIT_S: if ((xx = ( i != lpp->s))) lpp->s = i; break;
			    case IDC_COLOR_EDIT_L: if ((xx = ( i != lpp->l))) lpp->l = i; break;
			   }
			   if (xx) /* something has changed */
			   {
			    lpp->lpcc->rgbResult = FUNC3(lpp->h, lpp->s, lpp->l);
			    FUNC6(lpp);
			    FUNC2(lpp);
			    FUNC5(lpp);
			    FUNC7(lpp);
			   }
			 }
	       break;

        case IDC_COLOR_DEFINE:
               FUNC10(lpp, &lpp->fullsize);
	       FUNC24( FUNC15(lpp->hwndSelf, IDC_COLOR_EDIT_H));
	       break;

        case IDC_COLOR_ADD:    /* add colors ... column by column */
               cr = lpp->lpcc->lpCustColors;
               cr[(lpp->nextuserdef % 2) * 8 + lpp->nextuserdef / 2] = lpp->lpcc->rgbResult;
               if (++lpp->nextuserdef == 16)
		   lpp->nextuserdef = 0;
	       FUNC8(lpp, 2, 8);
	       break;

        case IDC_COLOR_RES:              /* resulting color */
	       hdc = FUNC14(lpp->hwndSelf);
	       lpp->lpcc->rgbResult = FUNC17(hdc, lpp->lpcc->rgbResult);
	       FUNC22(lpp->hwndSelf, hdc);
	       FUNC2(lpp);
	       FUNC6(lpp);
	       lpp->h = FUNC9('H', lpp->lpcc->rgbResult);
	       lpp->s = FUNC9('S', lpp->lpcc->rgbResult);
	       lpp->l = FUNC9('L', lpp->lpcc->rgbResult);
	       FUNC1(lpp);
	       FUNC5(lpp);
	       FUNC7(lpp);
	       break;

	  case pshHelp:           /* Help! */ /* The Beatles, 1965  ;-) */
	       i = FUNC21(HELPMSGSTRINGA);
                   if (lpp->lpcc->hwndOwner)
		       FUNC23(lpp->lpcc->hwndOwner, i, 0, (LPARAM)lpp->lpcc);
                   if ( FUNC4(lpp->lpcc))
		       FUNC11( (WNDPROC) lpp->lpcc->lpfnHook, lpp->hwndSelf,
		          WM_COMMAND, psh15, (LPARAM)lpp->lpcc);
	       break;

          case IDOK :
		cokmsg = FUNC21(COLOROKSTRINGA);
		    if (lpp->lpcc->hwndOwner)
			if (FUNC23(lpp->lpcc->hwndOwner, cokmsg, 0, (LPARAM)lpp->lpcc))
			break;    /* do NOT close */
		FUNC12(lpp->hwndSelf, 1) ;
		return TRUE ;

	  case IDCANCEL :
		FUNC12(lpp->hwndSelf, 0) ;
		return TRUE ;

       }
       return FALSE;
}