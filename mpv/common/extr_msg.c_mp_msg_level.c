
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log_root {int reload_counter; } ;
struct mp_log {int level; int reload_counter; struct mp_log_root* root; } ;


 scalar_t__ atomic_load_explicit (int *,int ) ;
 int memory_order_relaxed ;
 int update_loglevel (struct mp_log*) ;

int mp_msg_level(struct mp_log *log)
{
    struct mp_log_root *root = log->root;
    if (!root)
        return -1;
    if (atomic_load_explicit(&log->reload_counter, memory_order_relaxed) !=
        atomic_load_explicit(&root->reload_counter, memory_order_relaxed))
    {
        update_loglevel(log);
    }
    return log->level;
}
