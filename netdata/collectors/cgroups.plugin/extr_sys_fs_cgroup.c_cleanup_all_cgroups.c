
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int enabled; int options; scalar_t__ hash_chart; struct cgroup* next; int id; int chart_id; scalar_t__ available; } ;


 int CGROUP_OPTIONS_DISABLED_DUPLICATE ;
 int D_CGROUP ;
 int cgroup_free (struct cgroup*) ;
 struct cgroup* cgroup_root ;
 int debug (int ,char*,int ,int ,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static inline void cleanup_all_cgroups() {
    struct cgroup *cg = cgroup_root, *last = ((void*)0);

    for(; cg ;) {
        if(!cg->available) {

            {
                struct cgroup *t;
                for(t = cgroup_root; t ; t = t->next) {
                    if(t != cg && t->available && !t->enabled && t->options & CGROUP_OPTIONS_DISABLED_DUPLICATE && t->hash_chart == cg->hash_chart && !strcmp(t->chart_id, cg->chart_id)) {
                        debug(D_CGROUP, "Enabling duplicate of cgroup '%s' with id '%s', because the original with id '%s' stopped.", t->chart_id, t->id, cg->id);
                        t->enabled = 1;
                        t->options &= ~CGROUP_OPTIONS_DISABLED_DUPLICATE;
                        break;
                    }
                }
            }

            if(!last)
                cgroup_root = cg->next;
            else
                last->next = cg->next;

            cgroup_free(cg);

            if(!last)
                cg = cgroup_root;
            else
                cg = last->next;
        }
        else {
            last = cg;
            cg = cg->next;
        }
    }
}
