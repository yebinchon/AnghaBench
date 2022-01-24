#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int style; int y_offset; int line_count; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  flags; } ;
typedef  int LRESULT ;
typedef  int INT ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  EF_VSCROLL_TRACK ; 
#define  EM_GETTHUMB 138 
#define  EM_LINESCROLL 137 
 int /*<<< orphan*/  EN_VSCROLL ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int ES_AUTOVSCROLL ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SB_BOTTOM 136 
#define  SB_ENDSCROLL 135 
#define  SB_LINEDOWN 134 
#define  SB_LINEUP 133 
#define  SB_PAGEDOWN 132 
#define  SB_PAGEUP 131 
#define  SB_THUMBPOSITION 130 
#define  SB_THUMBTRACK 129 
#define  SB_TOP 128 
 int /*<<< orphan*/  SB_VERT ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int WS_VSCROLL ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT FUNC9(EDITSTATE *es, INT action, INT pos)
{
	INT dy;

	if (!(es->style & ES_MULTILINE))
		return 0;

	if (!(es->style & ES_AUTOVSCROLL))
		return 0;

	dy = 0;
	switch (action) {
	case SB_LINEUP:
	case SB_LINEDOWN:
	case SB_PAGEUP:
	case SB_PAGEDOWN:
		FUNC7("action %d (%s)\n", action, (action == SB_LINEUP ? "SB_LINEUP" :
						   (action == SB_LINEDOWN ? "SB_LINEDOWN" :
						    (action == SB_PAGEUP ? "SB_PAGEUP" :
						     "SB_PAGEDOWN"))));
		FUNC1(es, action);
		return 0;
	case SB_TOP:
		FUNC7("SB_TOP\n");
		dy = -es->y_offset;
		break;
	case SB_BOTTOM:
		FUNC7("SB_BOTTOM\n");
		dy = es->line_count - 1 - es->y_offset;
		break;
	case SB_THUMBTRACK:
		FUNC7("SB_THUMBTRACK %d\n", pos);
		es->flags |= EF_VSCROLL_TRACK;
		if(es->style & WS_VSCROLL)
		    dy = pos - es->y_offset;
		else
		{
		    /* Assume default scroll range 0-100 */
		    INT vlc, new_y;
		    /* Sanity check */
		    if(pos < 0 || pos > 100) return 0;
		    vlc = FUNC8(es);
		    new_y = pos * (es->line_count - vlc) / 100;
		    dy = es->line_count ? (new_y - es->y_offset) : 0;
		    FUNC7("line_count=%d, y_offset=%d, pos=%d, dy = %d\n",
			    es->line_count, es->y_offset, pos, dy);
		}
		break;
	case SB_THUMBPOSITION:
		FUNC7("SB_THUMBPOSITION %d\n", pos);
		es->flags &= ~EF_VSCROLL_TRACK;
		if(es->style & WS_VSCROLL)
		    dy = pos - es->y_offset;
		else
		{
		    /* Assume default scroll range 0-100 */
		    INT vlc, new_y;
		    /* Sanity check */
		    if(pos < 0 || pos > 100) return 0;
		    vlc = FUNC8(es);
		    new_y = pos * (es->line_count - vlc) / 100;
		    dy = es->line_count ? (new_y - es->y_offset) : 0;
		    FUNC7("line_count=%d, y_offset=%d, pos=%d, dy = %d\n",
			    es->line_count, es->y_offset, pos, dy);
		}
		if (!dy)
		{
			/* force scroll info update */
			FUNC3(es);
			FUNC2(es, EN_VSCROLL);
		}
		break;
	case SB_ENDSCROLL:
		FUNC7("SB_ENDSCROLL\n");
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
		if(FUNC6( es->hwndSelf, GWL_STYLE ) & WS_VSCROLL)
		    ret = FUNC5(es->hwndSelf, SB_VERT);
		else
		{
		    /* Assume default scroll range 0-100 */
		    INT vlc = FUNC8(es);
		    ret = es->line_count ? es->y_offset * 100 / (es->line_count - vlc) : 0;
		}
		FUNC7("EM_GETTHUMB: returning %ld\n", ret);
		return ret;
	}
	case EM_LINESCROLL:
		FUNC7("EM_LINESCROLL %d\n", pos);
		dy = pos;
		break;

	default:
		FUNC4("undocumented WM_VSCROLL action %d (0x%04x), please report\n",
                    action, action);
		return 0;
	}
	if (dy)
		FUNC0(es, 0, dy);
	return 0;
}