#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_cmd_ctx {TYPE_2__* args; } ;
struct TYPE_3__ {int /*<<< orphan*/  d; int /*<<< orphan*/  s; } ;
struct TYPE_4__ {TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PROPERTY_MULTIPLY ; 
 int /*<<< orphan*/  FUNC0 (struct mp_cmd_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void *p)
{
    struct mp_cmd_ctx *cmd = p;

    FUNC0(cmd, cmd->args[0].v.s,
                        M_PROPERTY_MULTIPLY, &cmd->args[1].v.d);
}