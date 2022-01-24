#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vimTextArea; } ;
typedef  int /*<<< orphan*/  PhGC_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pg_RELATIVE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  gui_ph_raw_offset ; 

__attribute__((used)) static void
FUNC10(void)
{
    PhGC_t *gc;

    gc = FUNC2();
    FUNC3(FUNC9(FUNC6(gui.vimTextArea)));
    FUNC0(gc);
    FUNC1(gc);

    FUNC7(gui.vimTextArea, &gui_ph_raw_offset);
    FUNC5(&gui_ph_raw_offset, FUNC8(gui.vimTextArea, NULL));

    FUNC4(&gui_ph_raw_offset, Pg_RELATIVE);
}