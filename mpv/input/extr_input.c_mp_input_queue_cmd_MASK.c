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
struct input_ctx {int /*<<< orphan*/  cmd_queue; } ;
typedef  int /*<<< orphan*/  mp_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct input_ctx *ictx, mp_cmd_t *cmd)
{
    FUNC0(ictx);
    if (cmd) {
        FUNC3(&ictx->cmd_queue, cmd);
        FUNC2(ictx);
    }
    FUNC1(ictx);
    return 1;
}