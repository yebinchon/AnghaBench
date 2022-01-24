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
union m_option_value {int /*<<< orphan*/  member_0; } ;
struct mp_cmd_ctx {int num_args; int success; TYPE_2__* args; struct MPContext* mpctx; } ;
struct m_option {int /*<<< orphan*/  member_0; } ;
struct MPContext {int /*<<< orphan*/  log; } ;
struct TYPE_3__ {char* s; } ;
struct TYPE_4__ {TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  M_PROPERTY_GET ; 
 int /*<<< orphan*/  M_PROPERTY_GET_TYPE ; 
 int /*<<< orphan*/  M_PROPERTY_SET_STRING ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_cmd_ctx*,char const*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (union m_option_value*,union m_option_value*,union m_option_value*) ; 
 int /*<<< orphan*/  FUNC5 (union m_option_value*,union m_option_value*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,union m_option_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union m_option_value*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,union m_option_value*,struct MPContext*) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_cmd_ctx*,char const*,int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static void FUNC10(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int first = 0, dir = 1;

    if (FUNC9(cmd->args[first].v.s, "!reverse") == 0) {
        first += 1;
        dir = -1;
    }

    const char *name = cmd->args[first].v.s;
    first += 1;

    if (first >= cmd->num_args) {
        FUNC0(mpctx, "cycle-values command does not have any value arguments.\n");
        cmd->success = false;
        return;
    }

    struct m_option prop = {0};
    int r = FUNC7(name, M_PROPERTY_GET_TYPE, &prop, mpctx);
    if (r <= 0) {
        FUNC8(cmd, name, r);
        return;
    }

    union m_option_value curval = {0};
    r = FUNC7(name, M_PROPERTY_GET, &curval, mpctx);
    if (r <= 0) {
        FUNC8(cmd, name, r);
        return;
    }

    // Find the current value. Note that we even though compare_values() uses
    // strings internally, we need to convert the cycle-values arguments to
    // native anyway to "normalize" the value for comparison.
    int current = -1;
    for (int n = first; n < cmd->num_args; n++) {
        union m_option_value val = {0};
        if (FUNC6(mpctx->log, &prop, FUNC2(name),
                           FUNC2(cmd->args[n].v.s), &val) < 0)
            continue;

        if (FUNC4(&prop, &curval, &val))
            current = n;

        FUNC5(&prop, &val);

        if (current >= 0)
            break;
    }

    FUNC5(&prop, &curval);

    if (current >= 0) {
        current += dir;
        if (current < first)
            current = cmd->num_args - 1;
        if (current >= cmd->num_args)
            current = first;
    } else {
        FUNC1(mpctx, "Current value not found. Picking default.\n");
        current = dir > 0 ? first : cmd->num_args - 1;
    }

    FUNC3(cmd, name, M_PROPERTY_SET_STRING, cmd->args[current].v.s);
}