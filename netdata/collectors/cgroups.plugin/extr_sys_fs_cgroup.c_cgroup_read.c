
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int options; int memory; int cpuacct_stat; int io_serviced; int io_service_bytes; int io_queued; int io_merged; int throttle_io_serviced; int throttle_io_service_bytes; int cpuacct_usage; int id; } ;


 int CGROUP_OPTIONS_IS_UNIFIED ;
 int D_CGROUP ;
 int cgroup2_read_blkio (int *,int) ;
 int cgroup2_read_cpuacct_stat (int *) ;
 int cgroup_read_blkio (int *) ;
 int cgroup_read_cpuacct_stat (int *) ;
 int cgroup_read_cpuacct_usage (int *) ;
 int cgroup_read_memory (int *,int) ;
 int debug (int ,char*,int ) ;

__attribute__((used)) static inline void cgroup_read(struct cgroup *cg) {
    debug(D_CGROUP, "reading metrics for cgroups '%s'", cg->id);
    if(!(cg->options & CGROUP_OPTIONS_IS_UNIFIED)) {
        cgroup_read_cpuacct_stat(&cg->cpuacct_stat);
        cgroup_read_cpuacct_usage(&cg->cpuacct_usage);
        cgroup_read_memory(&cg->memory, 0);
        cgroup_read_blkio(&cg->io_service_bytes);
        cgroup_read_blkio(&cg->io_serviced);
        cgroup_read_blkio(&cg->throttle_io_service_bytes);
        cgroup_read_blkio(&cg->throttle_io_serviced);
        cgroup_read_blkio(&cg->io_merged);
        cgroup_read_blkio(&cg->io_queued);
    }
    else {

        cgroup2_read_blkio(&cg->io_service_bytes, 0);
        cgroup2_read_blkio(&cg->io_serviced, 4);
        cgroup2_read_cpuacct_stat(&cg->cpuacct_stat);
        cgroup_read_memory(&cg->memory, 1);
    }
}
