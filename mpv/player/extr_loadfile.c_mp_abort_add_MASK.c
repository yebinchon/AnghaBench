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
struct mp_abort_entry {scalar_t__ cancel; } ;
struct MPContext {int /*<<< orphan*/  abort_lock; int /*<<< orphan*/  num_abort_list; int /*<<< orphan*/  abort_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_abort_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,struct mp_abort_entry*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct MPContext *mpctx, struct mp_abort_entry *abort)
{
    FUNC4(&mpctx->abort_lock);
    FUNC1(!abort->cancel);
    abort->cancel = FUNC3(NULL);
    FUNC0(NULL, mpctx->abort_list, mpctx->num_abort_list, abort);
    FUNC2(mpctx, abort);
    FUNC5(&mpctx->abort_lock);
}