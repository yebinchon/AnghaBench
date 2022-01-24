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
struct input_ctx {int /*<<< orphan*/  mutex; struct input_ctx* current_down_cmd; int /*<<< orphan*/  cmd_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct input_ctx*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_ctx*) ; 

void FUNC7(struct input_ctx *ictx)
{
    if (!ictx)
        return;

    FUNC2(ictx);
    FUNC5(ictx, true);
    FUNC3(ictx);

    FUNC1(ictx);
    FUNC0(&ictx->cmd_queue);
    FUNC6(ictx->current_down_cmd);
    FUNC4(&ictx->mutex);
    FUNC6(ictx);
}