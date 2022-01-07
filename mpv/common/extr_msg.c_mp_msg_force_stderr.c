
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_global {TYPE_1__* log; } ;
struct mp_log_root {int force_stderr; } ;
struct TYPE_2__ {struct mp_log_root* root; } ;


 int mp_msg_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_msg_force_stderr(struct mpv_global *global, bool force_stderr)
{
    struct mp_log_root *root = global->log->root;

    pthread_mutex_lock(&mp_msg_lock);
    root->force_stderr = force_stderr;
    pthread_mutex_unlock(&mp_msg_lock);
}
