#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mylogfont ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_13__ {int selected; int NtfUnicode; scalar_t__ hwndCombo; scalar_t__ hwndEdit; void* font; void* defaultFont; scalar_t__ hwndNotify; int /*<<< orphan*/  unicode; scalar_t__ hwndSelf; } ;
struct TYPE_12__ {int style; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  x; int /*<<< orphan*/  y; scalar_t__ hwndParent; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LOGFONTW ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  void* HFONT ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  TYPE_2__ CREATESTRUCTA ;
typedef  TYPE_3__ COMBOEX_INFO ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int) ; 
 int CBS_DROPDOWN ; 
 int CBS_DROPDOWNLIST ; 
 int CBS_NOINTEGRALHEIGHT ; 
 int CBS_OWNERDRAWFIXED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  COMBOEX_ComboWndProc ; 
 int /*<<< orphan*/  COMBOEX_EditWndProc ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  COMBO_SUBCLASSID ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_USEFONTINFO ; 
 int /*<<< orphan*/  EDIT_SUBCLASSID ; 
 int /*<<< orphan*/  EM_SETMARGINS ; 
 int ES_AUTOHSCROLL ; 
 int /*<<< orphan*/  GWLP_HINSTANCE ; 
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  HWND_TOP ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ NFR_ANSI ; 
 scalar_t__ NFR_UNICODE ; 
 int /*<<< orphan*/  NF_QUERY ; 
 int /*<<< orphan*/  SPI_GETICONTITLELOGFONT ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOREDRAW ; 
 int SWP_NOZORDER ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,scalar_t__) ; 
 int /*<<< orphan*/  WC_COMBOBOXW ; 
 int /*<<< orphan*/  WC_EDITW ; 
 int /*<<< orphan*/  WM_GETFONT ; 
 int /*<<< orphan*/  WM_NOTIFYFORMAT ; 
 int /*<<< orphan*/  WM_SETFONT ; 
 int WS_CHILD ; 
 int WS_CLIPCHILDREN ; 
 int WS_CLIPSIBLINGS ; 
 int WS_VISIBLE ; 
 int WS_VSCROLL ; 
 int /*<<< orphan*/  comboex ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT FUNC20 (HWND hwnd, CREATESTRUCTA const *cs)
{
    static const WCHAR NIL[] = { 0 };
    COMBOEX_INFO *infoPtr;
    LOGFONTW mylogfont;
    RECT win_rect;
    INT i;

    /* allocate memory for info structure */
    infoPtr = FUNC0 (sizeof(COMBOEX_INFO));
    if (!infoPtr) return -1;

    /* initialize info structure */
    /* note that infoPtr is allocated zero-filled */

    infoPtr->hwndSelf = hwnd;
    infoPtr->selected = -1;

    infoPtr->unicode = FUNC10 (hwnd);
    infoPtr->hwndNotify = cs->hwndParent;

    i = FUNC11(infoPtr->hwndNotify, WM_NOTIFYFORMAT, (WPARAM)hwnd, NF_QUERY);
    if ((i != NFR_ANSI) && (i != NFR_UNICODE)) {
	FUNC18("wrong response to WM_NOTIFYFORMAT (%d), assuming ANSI\n", i);
	i = NFR_ANSI;
    }
    infoPtr->NtfUnicode = (i == NFR_UNICODE);

    FUNC12 (hwnd, 0, (DWORD_PTR)infoPtr);

    if (FUNC17(comboex)) {
	RECT client, rect;
	FUNC9(hwnd, &rect);
	FUNC6(hwnd, &client);
	FUNC16("EX window=(%s), client=(%s)\n",
		FUNC19(&rect), FUNC19(&client));
    }

    /* Native version of ComboEx creates the ComboBox with DROPDOWNLIST */
    /* specified. It then creates its own version of the EDIT control   */
    /* and makes the ComboBox the parent. This is because a normal      */
    /* DROPDOWNLIST does not have an EDIT control, but we need one.     */
    /* We also need to place the edit control at the proper location    */
    /* (allow space for the icons).                                     */

    infoPtr->hwndCombo = FUNC5 (WC_COMBOBOXW, NIL,
                         WS_CLIPSIBLINGS | WS_CLIPCHILDREN | WS_VSCROLL |
                         CBS_NOINTEGRALHEIGHT | CBS_DROPDOWNLIST |
			 WS_CHILD | WS_VISIBLE | CBS_OWNERDRAWFIXED |
			 FUNC8 (hwnd, GWL_STYLE),
			 cs->y, cs->x, cs->cx, cs->cy, hwnd,
			 (HMENU) FUNC7 (hwnd, GWLP_ID),
			 (HINSTANCE)FUNC7 (hwnd, GWLP_HINSTANCE), NULL);

    FUNC14(infoPtr->hwndCombo, COMBOEX_ComboWndProc, COMBO_SUBCLASSID,
                      (DWORD_PTR)hwnd);
    infoPtr->font = (HFONT)FUNC11 (infoPtr->hwndCombo, WM_GETFONT, 0, 0);

    /*
     * Now create our own EDIT control so we can position it.
     * It is created only for CBS_DROPDOWN style
     */
    if ((cs->style & CBS_DROPDOWNLIST) == CBS_DROPDOWN) {
	infoPtr->hwndEdit = FUNC4 (0, WC_EDITW, NIL,
		    WS_CHILD | WS_VISIBLE | WS_CLIPSIBLINGS | ES_AUTOHSCROLL,
		    0, 0, 0, 0,  /* will set later */
		    infoPtr->hwndCombo,
		    (HMENU) FUNC7 (hwnd, GWLP_ID),
		    (HINSTANCE)FUNC7 (hwnd, GWLP_HINSTANCE), NULL);

	FUNC14(infoPtr->hwndEdit, COMBOEX_EditWndProc, EDIT_SUBCLASSID,
	                  (DWORD_PTR)hwnd);

	infoPtr->font = (HFONT)FUNC11(infoPtr->hwndCombo, WM_GETFONT, 0, 0);
    }

    /*
     * Locate the default font if necessary and then set it in
     * all associated controls
     */
    if (!infoPtr->font) {
	FUNC15 (SPI_GETICONTITLELOGFONT, sizeof(mylogfont),
			       &mylogfont, 0);
	infoPtr->font = infoPtr->defaultFont = FUNC3 (&mylogfont);
    }
    FUNC11 (infoPtr->hwndCombo, WM_SETFONT, (WPARAM)infoPtr->font, 0);
    if (infoPtr->hwndEdit) {
	FUNC11 (infoPtr->hwndEdit, WM_SETFONT, (WPARAM)infoPtr->font, 0);
       FUNC11 (infoPtr->hwndEdit, EM_SETMARGINS, EC_USEFONTINFO, 0);
    }

    FUNC2 (infoPtr);

    /* Above is fairly certain, below is much less certain. */

    FUNC9(hwnd, &win_rect);

    if (FUNC17(comboex)) {
	RECT client, rect;
	FUNC6(hwnd, &client);
	FUNC9(infoPtr->hwndCombo, &rect);
	FUNC16("EX window=(%s) client=(%s) CB wnd=(%s)\n",
		FUNC19(&win_rect), FUNC19(&client),
		FUNC19(&rect));
    }
    FUNC13(infoPtr->hwndCombo, HWND_TOP, 0, 0,
		 win_rect.right - win_rect.left, win_rect.bottom - win_rect.top,
		 SWP_NOACTIVATE | SWP_NOREDRAW);

    FUNC9(infoPtr->hwndCombo, &win_rect);
    FUNC16("CB window=(%s)\n", FUNC19(&win_rect));
    FUNC13(hwnd, HWND_TOP, 0, 0,
		 win_rect.right - win_rect.left, win_rect.bottom - win_rect.top,
		 SWP_NOACTIVATE | SWP_NOZORDER | SWP_NOMOVE);

    FUNC1 (infoPtr);

    return 0;
}