#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ hloc32W; scalar_t__ hlocapp; struct TYPE_6__* undo_text; int /*<<< orphan*/  hwndSelf; struct TYPE_6__* next; struct TYPE_6__* first_line_def; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ LINEDEF ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT FUNC6(EDITSTATE *es)
{
    LINEDEF *pc, *pp;
    HTHEME theme;

    theme = FUNC2(es->hwndSelf);
    FUNC0(theme);

    /* The app can own the text buffer handle */
    if (es->hloc32W && (es->hloc32W != es->hlocapp))
        FUNC3(es->hloc32W);

    FUNC1(es);

    pc = es->first_line_def;
    while (pc)
    {
        pp = pc->next;
        FUNC5(pc);
        pc = pp;
    }

    FUNC4( es->hwndSelf, 0, 0 );
    FUNC5(es->undo_text);
    FUNC5(es);

    return 0;
}