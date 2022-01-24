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
struct TYPE_3__ {int /*<<< orphan*/  strings; } ;
typedef  TYPE_1__ UI ;

/* Variables and functions */
 int /*<<< orphan*/  UI_F_UI_GET0_RESULT ; 
 int /*<<< orphan*/  UI_R_INDEX_TOO_LARGE ; 
 int /*<<< orphan*/  UI_R_INDEX_TOO_SMALL ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

const char *FUNC4(UI *ui, int i)
{
    if (i < 0) {
        FUNC1(UI_F_UI_GET0_RESULT, UI_R_INDEX_TOO_SMALL);
        return NULL;
    }
    if (i >= FUNC2(ui->strings)) {
        FUNC1(UI_F_UI_GET0_RESULT, UI_R_INDEX_TOO_LARGE);
        return NULL;
    }
    return FUNC0(FUNC3(ui->strings, i));
}