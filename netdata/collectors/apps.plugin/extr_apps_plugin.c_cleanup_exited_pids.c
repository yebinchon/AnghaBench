
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid_stat {int keep; scalar_t__ keeploops; size_t fds_size; struct pid_stat* next; int pid; TYPE_1__* fds; int comm; int updated; } ;
typedef int pid_t ;
struct TYPE_2__ {scalar_t__ fd; } ;


 int clear_pid_fd (TYPE_1__*) ;
 scalar_t__ debug_enabled ;
 int debug_log (char*,int ,int ) ;
 int del_pid_entry (int ) ;
 int file_descriptor_not_used (scalar_t__) ;
 struct pid_stat* root_of_pids ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cleanup_exited_pids(void) {
    size_t c;
    struct pid_stat *p = ((void*)0);

    for(p = root_of_pids; p ;) {
        if(!p->updated && (!p->keep || p->keeploops > 0)) {
            if(unlikely(debug_enabled && (p->keep || p->keeploops)))
                debug_log(" > CLEANUP cannot keep exited process %d (%s) anymore - removing it.", p->pid, p->comm);

            for(c = 0; c < p->fds_size; c++)
                if(p->fds[c].fd > 0) {
                    file_descriptor_not_used(p->fds[c].fd);
                    clear_pid_fd(&p->fds[c]);
                }

            pid_t r = p->pid;
            p = p->next;
            del_pid_entry(r);
        }
        else {
            if(unlikely(p->keep)) p->keeploops++;
            p->keep = 0;
            p = p->next;
        }
    }
}
