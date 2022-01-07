
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {char* filename_cpu_cfs_quota; int cpu_cfs_period; int cpuset_cpus; int cpu_cfs_quota; int id; } ;
typedef int procfile ;


 int D_CGROUP ;
 int PROCFILE_FLAG_DEFAULT ;
 int debug (int ,char*,int,int,int) ;
 int error (char*,char*,...) ;
 int freez (char*) ;
 int get_system_cpus () ;
 unsigned long procfile_lines (int *) ;
 int procfile_lineword (int *,int ,int) ;
 int * procfile_readall (int *) ;
 int * procfile_reopen (int *,char*,int *,int ) ;
 void* str2ull (int ) ;
 scalar_t__ strsame (char*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void update_cpu_limits2(struct cgroup *cg) {
    if(cg->filename_cpu_cfs_quota){
        static procfile *ff = ((void*)0);

        ff = procfile_reopen(ff, cg->filename_cpu_cfs_quota, ((void*)0), PROCFILE_FLAG_DEFAULT);
        if(unlikely(!ff)) {
            goto cpu_limits2_err;
        }

        ff = procfile_readall(ff);
        if(unlikely(!ff)) {
            goto cpu_limits2_err;
        }

        unsigned long lines = procfile_lines(ff);

        if (unlikely(lines < 1)) {
            error("CGROUP: file '%s' should have 1 lines.", cg->filename_cpu_cfs_quota);
            return;
        }

        cg->cpu_cfs_period = str2ull(procfile_lineword(ff, 0, 1));
        cg->cpuset_cpus = get_system_cpus();

        char *s = "max\n\0";
        if(strsame(s, procfile_lineword(ff, 0, 0)) == 0){
            cg->cpu_cfs_quota = cg->cpu_cfs_period * cg->cpuset_cpus;
        } else {
            cg->cpu_cfs_quota = str2ull(procfile_lineword(ff, 0, 0));
        }
        debug(D_CGROUP, "CPU limits values: %llu %llu %llu", cg->cpu_cfs_period, cg->cpuset_cpus, cg->cpu_cfs_quota);
        return;

cpu_limits2_err:
        error("Cannot refresh cgroup %s cpu limit by reading '%s'. Will not update its limit anymore.", cg->id, cg->filename_cpu_cfs_quota);
        freez(cg->filename_cpu_cfs_quota);
        cg->filename_cpu_cfs_quota = ((void*)0);

    }
}
