#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lf ;
typedef  int UINT ;
struct TYPE_12__ {int /*<<< orphan*/ * crColor; } ;
struct TYPE_11__ {int /*<<< orphan*/  lfFaceName; int /*<<< orphan*/  lfCharSet; int /*<<< orphan*/  lfWeight; scalar_t__ lfWidth; scalar_t__ lfHeight; } ;
struct TYPE_10__ {int right; scalar_t__ top; scalar_t__ left; scalar_t__ bottom; } ;
typedef  char TCHAR ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPRECT ;
typedef  TYPE_2__ LOGFONT ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_3__ COLOR_SCHEME ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int BF_MIDDLE ; 
 int BF_RECT ; 
 int BF_SOFT ; 
 size_t COLOR_BTNHIGHLIGHT ; 
 size_t COLOR_BTNSHADOW ; 
 size_t COLOR_BTNTEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
#define  DFCS_CAPTIONCLOSE 132 
#define  DFCS_CAPTIONHELP 131 
#define  DFCS_CAPTIONMAX 130 
#define  DFCS_CAPTIONMIN 129 
#define  DFCS_CAPTIONRESTORE 128 
 int DFCS_INACTIVE ; 
 int DFCS_PUSHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDGE_RAISED ; 
 int /*<<< orphan*/  EDGE_SUNKEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FW_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC14(HDC dc, LPRECT r, UINT uFlags, COLOR_SCHEME *scheme)
{
    LOGFONT lf;
    HFONT hFont, hOldFont;
    COLORREF clrsave;
    RECT myr;
    INT bkmode;
    TCHAR Symbol;
    switch(uFlags & 0xff)
    {
    case DFCS_CAPTIONCLOSE:
        Symbol = 'r';
        break;
    case DFCS_CAPTIONHELP:
        Symbol = 's';
        break;
    case DFCS_CAPTIONMIN:
        Symbol = '0';
        break;
    case DFCS_CAPTIONMAX:
        Symbol = '1';
        break;
    case DFCS_CAPTIONRESTORE:
        Symbol = '2';
        break;
    default:
        return FALSE;
    }
    FUNC4(dc, r, (uFlags & DFCS_PUSHED) ? EDGE_SUNKEN : EDGE_RAISED, BF_RECT | BF_MIDDLE | BF_SOFT, scheme);
    FUNC12(&lf, sizeof(lf));
    FUNC5(r, &myr);
    myr.left += 1;
    myr.top += 1;
    myr.right -= 1;
    myr.bottom -= 1;
    if (uFlags & DFCS_PUSHED)
       FUNC6(&myr,1,1);
    lf.lfHeight = myr.bottom - myr.top;
    lf.lfWidth = 0;
    lf.lfWeight = FW_NORMAL;
    lf.lfCharSet = DEFAULT_CHARSET;
    FUNC13(lf.lfFaceName, FUNC10("Marlett"));
    hFont = FUNC0(&lf);
    /* Save font and text color */
    hOldFont = FUNC7(dc, hFont);
    clrsave = FUNC3(dc);
    bkmode = FUNC2(dc);
    /* Set color and drawing mode */
    FUNC8(dc, TRANSPARENT);
    if (uFlags & DFCS_INACTIVE)
    {
        /* Draw shadow */
        FUNC9(dc, scheme->crColor[COLOR_BTNHIGHLIGHT]);
        FUNC11(dc, myr.left + 1, myr.top + 1, &Symbol, 1);
    }
    FUNC9(dc, scheme->crColor[(uFlags & DFCS_INACTIVE) ? COLOR_BTNSHADOW : COLOR_BTNTEXT]);
    /* Draw selected symbol */
    FUNC11(dc, myr.left, myr.top, &Symbol, 1);
    /* Restore previous settings */
    FUNC9(dc, clrsave);
    FUNC7(dc, hOldFont);
    FUNC8(dc, bkmode);
    FUNC1(hFont);
    return TRUE;
}