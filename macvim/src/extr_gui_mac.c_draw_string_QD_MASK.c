#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;
typedef  int UInt32 ;
struct TYPE_6__ {scalar_t__ vc_type; } ;
struct TYPE_5__ {void* bottom; void* right; void* top; void* left; } ;
typedef  int /*<<< orphan*/  StyleParameter ;
typedef  TYPE_1__ Rect ;

/* Variables and functions */
 scalar_t__ CONV_NONE ; 
 int Columns ; 
 int DRAW_BOLD ; 
 int DRAW_TRANSP ; 
 int DRAW_UNDERC ; 
 int DRAW_UNDERL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bold ; 
 int /*<<< orphan*/  FUNC11 (int,int,int,int) ; 
 int gMacSystemVersion ; 
 scalar_t__ has_mbyte ; 
 int kQDUseCGTextMetrics ; 
 int kQDUseCGTextRendering ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  normal ; 
 TYPE_2__ output_conv ; 
 scalar_t__ p_antialias ; 
 scalar_t__ p_linespace ; 
 int /*<<< orphan*/  srcCopy ; 
 int /*<<< orphan*/  srcOr ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  underline ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(int row, int col, char_u *s, int len, int flags)
{
#ifdef FEAT_MBYTE
    char_u	*tofree = NULL;

    if (output_conv.vc_type != CONV_NONE)
    {
	tofree = string_convert(&output_conv, s, &len);
	if (tofree != NULL)
	    s = tofree;
    }
#endif

    /*
     * On OS X, try using Quartz-style text antialiasing.
     */
    if (gMacSystemVersion >= 0x1020)
    {
	/* Quartz antialiasing is available only in OS 10.2 and later. */
	UInt32 qd_flags = (p_antialias ?
			     kQDUseCGTextRendering | kQDUseCGTextMetrics : 0);
	FUNC6(qd_flags);
    }

    /*
     * When antialiasing we're using srcOr mode, we have to clear the block
     * before drawing the text.
     * Also needed when 'linespace' is non-zero to remove the cursor and
     * underlining.
     * But not when drawing transparently.
     * The following is like calling gui_mch_clear_block(row, col, row, col +
     * len - 1), but without setting the bg color to gui.back_pixel.
     */
    if (((gMacSystemVersion >= 0x1020 && p_antialias) || p_linespace != 0)
	    && !(flags & DRAW_TRANSP))
    {
	Rect rc;

	rc.left = FUNC2(col);
	rc.top = FUNC3(row);
#ifdef FEAT_MBYTE
	/* Multibyte computation taken from gui_w32.c */
	if (has_mbyte)
	{
	    /* Compute the length in display cells. */
	    rc.right = FILL_X(col + mb_string2cells(s, len));
	}
	else
#endif
	rc.right = FUNC2(col + len) + (col + len == Columns);
	rc.bottom = FUNC3(row + 1);
	FUNC1(&rc);
    }

    if (gMacSystemVersion >= 0x1020 && p_antialias)
    {
	StyleParameter face;

	face = normal;
	if (flags & DRAW_BOLD)
	    face |= bold;
	if (flags & DRAW_UNDERL)
	    face |= underline;
	FUNC9(face);

	/* Quartz antialiasing works only in srcOr transfer mode. */
	FUNC10(srcOr);

	FUNC5(FUNC7(col), FUNC8(row));
	FUNC0((char*)s, 0, len);
    }
    else
    {
	/* Use old-style, non-antialiased QuickDraw text rendering. */
	FUNC10(srcCopy);
	FUNC9(normal);

    /*  SelectFont(hdc, gui.currFont); */

	if (flags & DRAW_TRANSP)
	{
	    FUNC10(srcOr);
	}

	FUNC5(FUNC7(col), FUNC8(row));
	FUNC0((char *)s, 0, len);

	if (flags & DRAW_BOLD)
	{
	    FUNC10(srcOr);
	    FUNC5(FUNC7(col) + 1, FUNC8(row));
	    FUNC0((char *)s, 0, len);
	}

	if (flags & DRAW_UNDERL)
	{
	    FUNC5(FUNC2(col), FUNC3(row + 1) - 1);
	    FUNC4(FUNC2(col + len) - 1, FUNC3(row + 1) - 1);
	}
    }

    if (flags & DRAW_UNDERC)
	FUNC11(flags, row, col, len);

#ifdef FEAT_MBYTE
    vim_free(tofree);
#endif
}