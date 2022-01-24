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
struct mp_log_root {int color; int /*<<< orphan*/  stats_file; int /*<<< orphan*/  stats_path; int /*<<< orphan*/  log_file; int /*<<< orphan*/  log_path; int /*<<< orphan*/  reload_counter; int /*<<< orphan*/  msg_levels; scalar_t__ use_terminal; int /*<<< orphan*/  show_time; int /*<<< orphan*/  module; int /*<<< orphan*/  really_quiet; int /*<<< orphan*/  verbose; } ;
struct MPOpts {int /*<<< orphan*/  dump_stats; int /*<<< orphan*/  log_file; int /*<<< orphan*/  msg_levels; scalar_t__ msg_color; int /*<<< orphan*/  msg_time; scalar_t__ use_terminal; int /*<<< orphan*/  msg_module; int /*<<< orphan*/  msg_really_quiet; int /*<<< orphan*/  verbose; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* copy ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {struct mp_log_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ m_option_type_msglevels ; 
 int /*<<< orphan*/  mp_msg_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,struct mpv_global*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(struct mpv_global *global, struct MPOpts *opts)
{
    struct mp_log_root *root = global->log->root;

    FUNC2(&mp_msg_lock);

    root->verbose = opts->verbose;
    root->really_quiet = opts->msg_really_quiet;
    root->module = opts->msg_module;
    root->use_terminal = opts->use_terminal;
    root->show_time = opts->msg_time;
    if (root->use_terminal)
        root->color = opts->msg_color && FUNC1(STDOUT_FILENO);

    m_option_type_msglevels.free(&root->msg_levels);
    m_option_type_msglevels.copy(NULL, &root->msg_levels, &opts->msg_levels);

    FUNC0(&root->reload_counter, 1);
    FUNC3(&mp_msg_lock);

    FUNC4(opts->log_file, &root->log_path, &root->log_file,
                "log", global);

    FUNC4(opts->dump_stats, &root->stats_path, &root->stats_file,
                "stats", global);
}