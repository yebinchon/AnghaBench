
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid_stat {int read; scalar_t__ ppid; char* comm; int updated; scalar_t__ keeploops; scalar_t__ keep; int sortlist; int pid; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {int sortlist; int comm; int pid; int read; } ;


 int PID_LOG_FDS ;
 int PID_LOG_IO ;
 int PID_LOG_STAT ;
 int PID_LOG_STATUS ;
 TYPE_1__** all_pids ;
 scalar_t__ all_pids_count ;
 scalar_t__ debug_enabled ;
 int debug_log (char*,int ,char*,int ,int ,int ,int ) ;
 scalar_t__ enable_file_charts ;
 int error (char*,scalar_t__,char*,scalar_t__) ;
 struct pid_stat* get_pid_entry (scalar_t__) ;
 scalar_t__ include_exited_childs ;
 int managed_log (struct pid_stat*,int ,int ) ;
 scalar_t__ pid_max ;
 int read_pid_file_descriptors (struct pid_stat*,void*) ;
 int read_proc_pid_io (struct pid_stat*,void*) ;
 int read_proc_pid_stat (struct pid_stat*,void*) ;
 int read_proc_pid_status (struct pid_stat*,void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int collect_data_for_pid(pid_t pid, void *ptr) {
    if(unlikely(pid < 0 || pid > pid_max)) {
        error("Invalid pid %d read (expected %d to %d). Ignoring process.", pid, 0, pid_max);
        return 0;
    }

    struct pid_stat *p = get_pid_entry(pid);
    if(unlikely(!p || p->read)) return 0;
    p->read = 1;






    if(unlikely(!managed_log(p, PID_LOG_STAT, read_proc_pid_stat(p, ptr))))

        return 0;


    if(unlikely(p->ppid < 0 || p->ppid > pid_max)) {
        error("Pid %d (command '%s') states invalid parent pid %d. Using 0.", pid, p->comm, p->ppid);
        p->ppid = 0;
    }




    managed_log(p, PID_LOG_IO, read_proc_pid_io(p, ptr));




    if(unlikely(!managed_log(p, PID_LOG_STATUS, read_proc_pid_status(p, ptr))))

        return 0;




    if(enable_file_charts)
            managed_log(p, PID_LOG_FDS, read_pid_file_descriptors(p, ptr));




    if(unlikely(debug_enabled && include_exited_childs && all_pids_count && p->ppid && all_pids[p->ppid] && !all_pids[p->ppid]->read))
        debug_log("Read process %d (%s) sortlisted %d, but its parent %d (%s) sortlisted %d, is not read", p->pid, p->comm, p->sortlist, all_pids[p->ppid]->pid, all_pids[p->ppid]->comm, all_pids[p->ppid]->sortlist);


    p->updated = 1;
    p->keep = 0;
    p->keeploops = 0;

    return 1;
}
