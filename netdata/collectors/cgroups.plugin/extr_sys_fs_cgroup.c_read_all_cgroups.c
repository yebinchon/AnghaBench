
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int pending_renames; scalar_t__ available; scalar_t__ enabled; struct cgroup* next; } ;


 int D_CGROUP ;
 int cgroup_read (struct cgroup*) ;
 int debug (int ,char*) ;

__attribute__((used)) static inline void read_all_cgroups(struct cgroup *root) {
    debug(D_CGROUP, "reading metrics for all cgroups");

    struct cgroup *cg;

    for(cg = root; cg ; cg = cg->next)
        if(cg->enabled && cg->available && !cg->pending_renames)
            cgroup_read(cg);
}
