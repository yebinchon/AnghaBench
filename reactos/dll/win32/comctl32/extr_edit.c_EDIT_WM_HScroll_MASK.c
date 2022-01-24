#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int right; int left; } ;
struct TYPE_8__ {int style; scalar_t__ x_offset; int char_width; scalar_t__ text_width; TYPE_1__ format_rect; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  flags; } ;
typedef  int LRESULT ;
typedef  int INT ;
typedef  TYPE_2__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  EF_HSCROLL_TRACK ; 
#define  EM_GETTHUMB 138 
#define  EM_LINESCROLL 137 
 int /*<<< orphan*/  EN_HSCROLL ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int ES_AUTOHSCROLL ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HSCROLL_FRACTION ; 
#define  SB_ENDSCROLL 136 
 int /*<<< orphan*/  SB_HORZ ; 
#define  SB_LEFT 135 
#define  SB_LINELEFT 134 
#define  SB_LINERIGHT 133 
#define  SB_PAGELEFT 132 
#define  SB_PAGERIGHT 131 
#define  SB_RIGHT 130 
#define  SB_THUMBPOSITION 129 
#define  SB_THUMBTRACK 128 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int WS_HSCROLL ; 

__attribute__((used)) static LRESULT FUNC7(EDITSTATE *es, INT action, INT pos)
{
	INT dx;
	INT fw;

	if (!(es->style & ES_MULTILINE))
		return 0;

	if (!(es->style & ES_AUTOHSCROLL))
		return 0;

	dx = 0;
	fw = es->format_rect.right - es->format_rect.left;
	switch (action) {
	case SB_LINELEFT:
		FUNC6("SB_LINELEFT\n");
		if (es->x_offset)
			dx = -es->char_width;
		break;
	case SB_LINERIGHT:
		FUNC6("SB_LINERIGHT\n");
		if (es->x_offset < es->text_width)
			dx = es->char_width;
		break;
	case SB_PAGELEFT:
		FUNC6("SB_PAGELEFT\n");
		if (es->x_offset)
			dx = -fw / HSCROLL_FRACTION / es->char_width * es->char_width;
		break;
	case SB_PAGERIGHT:
		FUNC6("SB_PAGERIGHT\n");
		if (es->x_offset < es->text_width)
			dx = fw / HSCROLL_FRACTION / es->char_width * es->char_width;
		break;
	case SB_LEFT:
		FUNC6("SB_LEFT\n");
		if (es->x_offset)
			dx = -es->x_offset;
		break;
	case SB_RIGHT:
		FUNC6("SB_RIGHT\n");
		if (es->x_offset < es->text_width)
			dx = es->text_width - es->x_offset;
		break;
	case SB_THUMBTRACK:
		FUNC6("SB_THUMBTRACK %d\n", pos);
		es->flags |= EF_HSCROLL_TRACK;
		if(es->style & WS_HSCROLL)
		    dx = pos - es->x_offset;
		else
		{
		    INT fw, new_x;
		    /* Sanity check */
		    if(pos < 0 || pos > 100) return 0;
		    /* Assume default scroll range 0-100 */
		    fw = es->format_rect.right - es->format_rect.left;
		    new_x = pos * (es->text_width - fw) / 100;
		    dx = es->text_width ? (new_x - es->x_offset) : 0;
		}
		break;
	case SB_THUMBPOSITION:
		FUNC6("SB_THUMBPOSITION %d\n", pos);
		es->flags &= ~EF_HSCROLL_TRACK;
		if(FUNC5( es->hwndSelf, GWL_STYLE ) & WS_HSCROLL)
		    dx = pos - es->x_offset;
		else
		{
		    INT fw, new_x;
		    /* Sanity check */
		    if(pos < 0 || pos > 100) return 0;
		    /* Assume default scroll range 0-100 */
		    fw = es->format_rect.right - es->format_rect.left;
		    new_x = pos * (es->text_width - fw) / 100;
		    dx = es->text_width ? (new_x - es->x_offset) : 0;
		}
		if (!dx) {
			/* force scroll info update */
			FUNC2(es);
			FUNC1(es, EN_HSCROLL);
		}
		break;
	case SB_ENDSCROLL:
		FUNC6("SB_ENDSCROLL\n");
		break;
	/*
	 *	FIXME : the next two are undocumented !
	 *	Are we doing the right thing ?
	 *	At least Win 3.1 Notepad makes use of EM_GETTHUMB this way,
	 *	although it's also a regular control message.
	 */
	case EM_GETTHUMB: /* this one is used by NT notepad */
	{
		LRESULT ret;
		if(FUNC5( es->hwndSelf, GWL_STYLE ) & WS_HSCROLL)
		    ret = FUNC4(es->hwndSelf, SB_HORZ);
		else
		{
		    /* Assume default scroll range 0-100 */
		    INT fw = es->format_rect.right - es->format_rect.left;
		    ret = es->text_width ? es->x_offset * 100 / (es->text_width - fw) : 0;
		}
		FUNC6("EM_GETTHUMB: returning %ld\n", ret);
		return ret;
	}
	case EM_LINESCROLL:
		FUNC6("EM_LINESCROLL16\n");
		dx = pos;
		break;

	default:
		FUNC3("undocumented WM_HSCROLL action %d (0x%04x), please report\n",
                    action, action);
		return 0;
	}
	if (dx)
	{
	    INT fw = es->format_rect.right - es->format_rect.left;
	    /* check if we are going to move too far */
	    if(es->x_offset + dx + fw > es->text_width)
		dx = es->text_width - fw - es->x_offset;
	    if(dx)
		FUNC0(es, dx, 0);
	}
	return 0;
}