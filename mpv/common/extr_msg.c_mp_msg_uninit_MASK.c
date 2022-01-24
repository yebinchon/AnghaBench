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
struct mpv_global {TYPE_1__* log; } ;
struct mp_log_root {int /*<<< orphan*/  msg_levels; struct mp_log_root* log_path; scalar_t__ log_file; struct mp_log_root* stats_path; scalar_t__ stats_file; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {struct mp_log_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_2__ m_option_type_msglevels ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log_root*) ; 

void FUNC3(struct mpv_global *global)
{
    struct mp_log_root *root = global->log->root;
    if (root->stats_file)
        FUNC0(root->stats_file);
    FUNC2(root->stats_path);
    if (root->log_file)
        FUNC0(root->log_file);
    FUNC2(root->log_path);
    m_option_type_msglevels.free(&root->msg_levels);
    FUNC2(root);
    global->log = NULL;
}