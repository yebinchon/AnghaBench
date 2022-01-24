#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_22__ {int style; int /*<<< orphan*/  hwndParent; int /*<<< orphan*/  selection_end; int /*<<< orphan*/  selection_start; } ;
typedef  int LRESULT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DC_HASDEFID ; 
 int /*<<< orphan*/  DM_GETDEFID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  EN_CHANGE ; 
 int /*<<< orphan*/  EN_UPDATE ; 
 int ES_MULTILINE ; 
 int ES_READONLY ; 
 int ES_WANTRETURN ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  VK_CONTROL ; 
#define  VK_DELETE 141 
#define  VK_DOWN 140 
#define  VK_END 139 
#define  VK_ESCAPE 138 
#define  VK_F4 137 
#define  VK_HOME 136 
#define  VK_INSERT 135 
#define  VK_LEFT 134 
 int /*<<< orphan*/  VK_MENU ; 
#define  VK_NEXT 133 
#define  VK_PRIOR 132 
#define  VK_RETURN 131 
#define  VK_RIGHT 130 
 int /*<<< orphan*/  VK_SHIFT ; 
#define  VK_TAB 129 
#define  VK_UP 128 
 int /*<<< orphan*/  WM_CLOSE ; 
 int /*<<< orphan*/  WM_KEYDOWN ; 
 int /*<<< orphan*/  WM_NEXTDLGCTL ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT FUNC25(EDITSTATE *es, INT key)
{
	BOOL shift;
	BOOL control;

	if (FUNC19(VK_MENU) & 0x8000)
		return 0;

	shift = FUNC19(VK_SHIFT) & 0x8000;
	control = FUNC19(VK_CONTROL) & 0x8000;

	switch (key) {
	case VK_F4:
	case VK_UP:
		if (FUNC0(es, WM_KEYDOWN, key) || key == VK_F4)
			break;

		/* fall through */
	case VK_LEFT:
		if ((es->style & ES_MULTILINE) && (key == VK_UP))
			FUNC10(es, shift);
		else
			if (control)
				FUNC11(es, shift);
			else
				FUNC3(es, shift);
		break;
	case VK_DOWN:
		if (FUNC0(es, WM_KEYDOWN, key))
			break;
		/* fall through */
	case VK_RIGHT:
		if ((es->style & ES_MULTILINE) && (key == VK_DOWN))
			FUNC4(es, shift);
		else if (control)
			FUNC12(es, shift);
		else
			FUNC6(es, shift);
		break;
	case VK_HOME:
		FUNC7(es, shift, control);
		break;
	case VK_END:
		FUNC5(es, shift, control);
		break;
	case VK_PRIOR:
		if (es->style & ES_MULTILINE)
			FUNC9(es, shift);
		else
			FUNC0(es, WM_KEYDOWN, key);
		break;
	case VK_NEXT:
		if (es->style & ES_MULTILINE)
			FUNC8(es, shift);
		else
			FUNC0(es, WM_KEYDOWN, key);
		break;
	case VK_DELETE:
		if (!(es->style & ES_READONLY) && !(shift && control)) {
			if (es->selection_start != es->selection_end) {
				if (shift)
					FUNC16(es);
				else
					FUNC14(es);
			} else {
				if (shift) {
					/* delete character left of caret */
					FUNC1(es, (UINT)-1, 0, FALSE);
					FUNC3(es, TRUE);
					FUNC14(es);
				} else if (control) {
					/* delete to end of line */
					FUNC1(es, (UINT)-1, 0, FALSE);
					FUNC5(es, TRUE, FALSE);
					FUNC14(es);
				} else {
					/* delete character right of caret */
					FUNC1(es, (UINT)-1, 0, FALSE);
					FUNC6(es, TRUE);
					FUNC14(es);
				}
			}
		}
		break;
	case VK_INSERT:
		if (shift) {
			if (!(es->style & ES_READONLY))
				FUNC17(es);
		} else if (control)
			FUNC15(es);
		break;
	case VK_RETURN:
	    /* If the edit doesn't want the return send a message to the default object */
	    if(!(es->style & ES_MULTILINE) || !(es->style & ES_WANTRETURN))
	    {
                DWORD dw;

                if (!FUNC2(es)) break;
                if (control) break;
                dw = FUNC23(es->hwndParent, DM_GETDEFID, 0, 0);
                if (FUNC20(dw) == DC_HASDEFID)
                {
                    HWND hwDefCtrl = FUNC18(es->hwndParent, FUNC21(dw));
                    if (hwDefCtrl)
                    {
                        FUNC23(es->hwndParent, WM_NEXTDLGCTL, (WPARAM)hwDefCtrl, TRUE);
                        FUNC22(hwDefCtrl, WM_KEYDOWN, VK_RETURN, 0);
                    }
                }
	    }
	    break;
        case VK_ESCAPE:
            if ((es->style & ES_MULTILINE) && FUNC2(es))
                FUNC22(es->hwndParent, WM_CLOSE, 0, 0);
            break;
        case VK_TAB:
            if ((es->style & ES_MULTILINE) && FUNC2(es))
                FUNC23(es->hwndParent, WM_NEXTDLGCTL, shift, 0);
            break;
        case 'A':
            if (control)
            {
                if (FUNC1(es, 0, FUNC24(es), FALSE))
                {
                    FUNC13(es, EN_UPDATE);
                    FUNC13(es, EN_CHANGE);
                }
            }
            break;
	}
        return TRUE;
}