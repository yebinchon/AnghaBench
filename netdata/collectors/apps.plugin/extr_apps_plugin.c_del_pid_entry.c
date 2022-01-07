
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid_stat {size_t fds_size; struct pid_stat* cmdline; struct pid_stat* cmdline_filename; struct pid_stat* io_filename; int status_arl; struct pid_stat* status_filename; struct pid_stat* stat_filename; struct pid_stat* fds_dirname; struct pid_stat* fds; struct pid_stat* filename; struct pid_stat* next; TYPE_1__* prev; int comm; } ;
typedef size_t pid_t ;
struct TYPE_2__ {struct pid_stat* next; } ;


 struct pid_stat** all_pids ;
 int all_pids_count ;
 int arl_free (int ) ;
 int debug_log (char*,size_t,int ) ;
 int error (char*,size_t) ;
 int freez (struct pid_stat*) ;
 struct pid_stat* root_of_pids ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void del_pid_entry(pid_t pid) {
    struct pid_stat *p = all_pids[pid];

    if(unlikely(!p)) {
        error("attempted to free pid %d that is not allocated.", pid);
        return;
    }

    debug_log("process %d %s exited, deleting it.", pid, p->comm);

    if(root_of_pids == p)
        root_of_pids = p->next;

    if(p->next) p->next->prev = p->prev;
    if(p->prev) p->prev->next = p->next;



    {
        size_t i;
        for(i = 0; i < p->fds_size; i++)
            if(p->fds[i].filename)
                freez(p->fds[i].filename);
    }

    freez(p->fds);

    freez(p->fds_dirname);
    freez(p->stat_filename);
    freez(p->status_filename);

    arl_free(p->status_arl);

    freez(p->io_filename);
    freez(p->cmdline_filename);
    freez(p->cmdline);
    freez(p);

    all_pids[pid] = ((void*)0);
    all_pids_count--;
}
