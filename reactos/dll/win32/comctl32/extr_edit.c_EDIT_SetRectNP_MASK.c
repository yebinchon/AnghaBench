#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_6__ {scalar_t__ line_height; int style; scalar_t__ right_margin; TYPE_2__ format_rect; scalar_t__ left_margin; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int LONG_PTR ;
typedef  int INT ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  SM_CXBORDER ; 
 int /*<<< orphan*/  SM_CYBORDER ; 
 int WS_BORDER ; 
 int WS_EX_CLIENTEDGE ; 

__attribute__((used)) static void FUNC5(EDITSTATE *es, const RECT *rc)
{
	LONG_PTR ExStyle;
	INT bw, bh;
	ExStyle = FUNC3(es->hwndSelf, GWL_EXSTYLE);

	FUNC0(&es->format_rect, rc);

	if (ExStyle & WS_EX_CLIENTEDGE) {
		es->format_rect.left++;
		es->format_rect.right--;

		if (es->format_rect.bottom - es->format_rect.top
		    >= es->line_height + 2)
		{
			es->format_rect.top++;
			es->format_rect.bottom--;
		}
	}
	else if (es->style & WS_BORDER) {
		bw = FUNC2(SM_CXBORDER) + 1;
		bh = FUNC2(SM_CYBORDER) + 1;
                FUNC4(&es->format_rect, -bw, 0);
                if (es->format_rect.bottom - es->format_rect.top >= es->line_height + 2 * bh)
                    FUNC4(&es->format_rect, 0, -bh);
	}

	es->format_rect.left += es->left_margin;
	es->format_rect.right -= es->right_margin;
	FUNC1(es);
}