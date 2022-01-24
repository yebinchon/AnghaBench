#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct game_capture {int /*<<< orphan*/  config; int /*<<< orphan*/  executable; int /*<<< orphan*/  class; int /*<<< orphan*/  title; int /*<<< orphan*/  cursor_data; scalar_t__ hotkey_pair; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct game_capture*) ; 

__attribute__((used)) static void FUNC8(void *data)
{
	struct game_capture *gc = data;
	FUNC7(gc);

	if (gc->hotkey_pair)
		FUNC5(gc->hotkey_pair);

	FUNC4();
	FUNC1(&gc->cursor_data);
	FUNC6();

	FUNC2(&gc->title);
	FUNC2(&gc->class);
	FUNC2(&gc->executable);
	FUNC3(&gc->config);
	FUNC0(gc);
}