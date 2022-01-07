
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {scalar_t__ available; struct cgroup* next; } ;


 int D_CGROUP ;
 struct cgroup* cgroup_root ;
 int debug (int ,char*) ;

__attribute__((used)) static inline void mark_all_cgroups_as_not_available() {
    debug(D_CGROUP, "marking all cgroups as not available");

    struct cgroup *cg;


    for(cg = cgroup_root; cg ; cg = cg->next) {
        cg->available = 0;
    }
}
