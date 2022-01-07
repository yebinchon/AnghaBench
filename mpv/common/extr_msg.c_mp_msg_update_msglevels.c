
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpv_global {TYPE_1__* log; } ;
struct mp_log_root {int color; int stats_file; int stats_path; int log_file; int log_path; int reload_counter; int msg_levels; scalar_t__ use_terminal; int show_time; int module; int really_quiet; int verbose; } ;
struct MPOpts {int dump_stats; int log_file; int msg_levels; scalar_t__ msg_color; int msg_time; scalar_t__ use_terminal; int msg_module; int msg_really_quiet; int verbose; } ;
struct TYPE_4__ {int (* copy ) (int *,int *,int *) ;int (* free ) (int *) ;} ;
struct TYPE_3__ {struct mp_log_root* root; } ;


 int STDOUT_FILENO ;
 int atomic_fetch_add (int *,int) ;
 scalar_t__ isatty (int ) ;
 TYPE_2__ m_option_type_msglevels ;
 int mp_msg_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int reopen_file (int ,int *,int *,char*,struct mpv_global*) ;
 int stub1 (int *) ;
 int stub2 (int *,int *,int *) ;

void mp_msg_update_msglevels(struct mpv_global *global, struct MPOpts *opts)
{
    struct mp_log_root *root = global->log->root;

    pthread_mutex_lock(&mp_msg_lock);

    root->verbose = opts->verbose;
    root->really_quiet = opts->msg_really_quiet;
    root->module = opts->msg_module;
    root->use_terminal = opts->use_terminal;
    root->show_time = opts->msg_time;
    if (root->use_terminal)
        root->color = opts->msg_color && isatty(STDOUT_FILENO);

    m_option_type_msglevels.free(&root->msg_levels);
    m_option_type_msglevels.copy(((void*)0), &root->msg_levels, &opts->msg_levels);

    atomic_fetch_add(&root->reload_counter, 1);
    pthread_mutex_unlock(&mp_msg_lock);

    reopen_file(opts->log_file, &root->log_path, &root->log_file,
                "log", global);

    reopen_file(opts->dump_stats, &root->stats_path, &root->stats_file,
                "stats", global);
}
