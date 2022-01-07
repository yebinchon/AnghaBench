
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pid_stat {int log_thrown; char* pid; char* comm; } ;


 scalar_t__ ENOENT ;





 scalar_t__ debug_enabled ;
 scalar_t__ errno ;
 int error (char*,char*,char*,...) ;
 int netdata_configured_host_prefix ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int managed_log(struct pid_stat *p, uint32_t log, int status) {
    if(unlikely(!status)) {


        if(unlikely(debug_enabled || errno != ENOENT)) {
            if(unlikely(debug_enabled || !(p->log_thrown & log))) {
                p->log_thrown |= log;
                switch(log) {
                    case 130:



                        error("Cannot process %s/proc/%d/io (command '%s')", netdata_configured_host_prefix, p->pid, p->comm);

                        break;

                    case 128:



                        error("Cannot process %s/proc/%d/status (command '%s')", netdata_configured_host_prefix, p->pid, p->comm);

                        break;

                    case 132:



                        error("Cannot process %s/proc/%d/cmdline (command '%s')", netdata_configured_host_prefix, p->pid, p->comm);

                        break;

                    case 131:



                        error("Cannot process entries in %s/proc/%d/fd (command '%s')", netdata_configured_host_prefix, p->pid, p->comm);

                        break;

                    case 129:
                        break;

                    default:
                        error("unhandled error for pid %d, command '%s'", p->pid, p->comm);
                        break;
                }
            }
        }
        errno = 0;
    }
    else if(unlikely(p->log_thrown & log)) {

        p->log_thrown &= ~log;
    }

    return status;
}
