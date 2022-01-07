
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpv_global {TYPE_1__* log; } ;
struct mp_log_root {int msg_levels; struct mp_log_root* log_path; scalar_t__ log_file; struct mp_log_root* stats_path; scalar_t__ stats_file; } ;
struct TYPE_4__ {int (* free ) (int *) ;} ;
struct TYPE_3__ {struct mp_log_root* root; } ;


 int fclose (scalar_t__) ;
 TYPE_2__ m_option_type_msglevels ;
 int stub1 (int *) ;
 int talloc_free (struct mp_log_root*) ;

void mp_msg_uninit(struct mpv_global *global)
{
    struct mp_log_root *root = global->log->root;
    if (root->stats_file)
        fclose(root->stats_file);
    talloc_free(root->stats_path);
    if (root->log_file)
        fclose(root->log_file);
    talloc_free(root->log_path);
    m_option_type_msglevels.free(&root->msg_levels);
    talloc_free(root);
    global->log = ((void*)0);
}
