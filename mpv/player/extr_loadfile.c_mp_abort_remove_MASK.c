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
struct mp_abort_entry {int /*<<< orphan*/  cancel; } ;
struct MPContext {int num_abort_list; int /*<<< orphan*/  abort_lock; struct mp_abort_entry** abort_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_abort_entry**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct MPContext *mpctx, struct mp_abort_entry *abort)
{
    FUNC3(&mpctx->abort_lock);
    for (int n = 0; n < mpctx->num_abort_list; n++) {
        if (mpctx->abort_list[n] == abort) {
            FUNC0(mpctx->abort_list, mpctx->num_abort_list, n);
            FUNC1(&abort->cancel);
            abort = NULL; // it's not free'd, just clear for the assert below
            break;
        }
    }
    FUNC2(!abort); // should have been in the list
    FUNC4(&mpctx->abort_lock);
}