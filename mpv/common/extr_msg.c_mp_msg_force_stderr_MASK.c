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
struct mpv_global {TYPE_1__* log; } ;
struct mp_log_root {int force_stderr; } ;
struct TYPE_2__ {struct mp_log_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  mp_msg_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mpv_global *global, bool force_stderr)
{
    struct mp_log_root *root = global->log->root;

    FUNC0(&mp_msg_lock);
    root->force_stderr = force_stderr;
    FUNC1(&mp_msg_lock);
}