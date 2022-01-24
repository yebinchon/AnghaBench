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
struct mp_cmd {TYPE_1__* def; } ;
struct input_ctx {int /*<<< orphan*/  key_history; } ;
struct TYPE_2__ {int /*<<< orphan*/  is_ignore; } ;

/* Variables and functions */
 struct mp_cmd* FUNC0 (struct input_ctx*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_ctx*,struct mp_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_ctx*) ; 

__attribute__((used)) static struct mp_cmd *FUNC5(struct input_ctx *ictx, int code)
{
    FUNC4(ictx);
    struct mp_cmd *cmd = FUNC0(ictx, NULL, code);
    FUNC1(ictx->key_history, code);
    if (cmd && !cmd->def->is_ignore && !FUNC2(ictx, cmd))
        return cmd;
    FUNC3(cmd);
    return NULL;
}