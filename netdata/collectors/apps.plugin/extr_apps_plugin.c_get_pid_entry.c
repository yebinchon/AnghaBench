
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_stat {int fds_size; size_t pid; struct pid_stat* next; struct pid_stat* prev; int fds; } ;
struct pid_fd {int dummy; } ;
typedef size_t pid_t ;


 int MAX_SPARE_FDS ;
 struct pid_stat** all_pids ;
 int all_pids_count ;
 struct pid_stat* callocz (int,int) ;
 int init_pid_fds (struct pid_stat*,int ,int) ;
 scalar_t__ likely (struct pid_stat*) ;
 int mallocz (int) ;
 struct pid_stat* root_of_pids ;
 scalar_t__ unlikely (struct pid_stat*) ;

__attribute__((used)) static inline struct pid_stat *get_pid_entry(pid_t pid) {
    if(unlikely(all_pids[pid]))
        return all_pids[pid];

    struct pid_stat *p = callocz(sizeof(struct pid_stat), 1);
    p->fds = mallocz(sizeof(struct pid_fd) * MAX_SPARE_FDS);
    p->fds_size = MAX_SPARE_FDS;
    init_pid_fds(p, 0, p->fds_size);

    if(likely(root_of_pids))
        root_of_pids->prev = p;

    p->next = root_of_pids;
    root_of_pids = p;

    p->pid = pid;

    all_pids[pid] = p;
    all_pids_count++;

    return p;
}
