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
struct mp_waiter {int dummy; } ;
struct mp_cmd_ctx {void** on_completion_priv; } ;
struct MPContext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_waiter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 

__attribute__((used)) static void FUNC2(struct mp_cmd_ctx *cmd)
{
    void **a = cmd->on_completion_priv;
    struct MPContext *mpctx = a[0];
    struct mp_waiter *waiter = a[1];

    FUNC0(waiter, 0);
    FUNC1(mpctx);
}