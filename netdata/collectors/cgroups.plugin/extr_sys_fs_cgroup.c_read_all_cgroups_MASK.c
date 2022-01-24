#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cgroup {int /*<<< orphan*/  pending_renames; scalar_t__ available; scalar_t__ enabled; struct cgroup* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CGROUP ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline void FUNC2(struct cgroup *root) {
    FUNC1(D_CGROUP, "reading metrics for all cgroups");

    struct cgroup *cg;

    for(cg = root; cg ; cg = cg->next)
        if(cg->enabled && cg->available && !cg->pending_renames)
            FUNC0(cg);
}