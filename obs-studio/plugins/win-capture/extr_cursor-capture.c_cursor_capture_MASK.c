#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cursor_data {int visible; scalar_t__ current_cursor; int /*<<< orphan*/  cursor_pos; } ;
typedef  int /*<<< orphan*/  ci ;
struct TYPE_3__ {int cbSize; scalar_t__ hCursor; int flags; int /*<<< orphan*/  ptScreenPos; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  HICON ;
typedef  TYPE_1__ CURSORINFO ;

/* Variables and functions */
 int CURSOR_SHOWING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct cursor_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC5(struct cursor_data *data)
{
	CURSORINFO ci = {0};
	HICON icon;

	ci.cbSize = sizeof(ci);

	if (!FUNC2(&ci)) {
		data->visible = false;
		return;
	}

	FUNC4(&data->cursor_pos, &ci.ptScreenPos, sizeof(data->cursor_pos));

	if (data->current_cursor == ci.hCursor) {
		return;
	}

	icon = FUNC0(ci.hCursor);
	data->visible = FUNC3(data, icon);
	data->current_cursor = ci.hCursor;
	if ((ci.flags & CURSOR_SHOWING) == 0)
		data->visible = false;
	FUNC1(icon);
}