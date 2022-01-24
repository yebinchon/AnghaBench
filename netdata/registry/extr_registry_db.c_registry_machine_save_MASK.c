#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* guid; int first_t; int last_t; int usages; int /*<<< orphan*/  machine_urls; } ;
typedef  TYPE_1__ REGISTRY_MACHINE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  D_REGISTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,int,int,char*) ; 
 int /*<<< orphan*/  registry_machine_save_url ; 

__attribute__((used)) static int FUNC3(void *entry, void *file) {
    REGISTRY_MACHINE *m = entry;
    FILE *fp = file;

    FUNC0(D_REGISTRY, "Registry: registry_machine_save('%s')", m->guid);

    int ret = FUNC2(fp, "M\t%08x\t%08x\t%08x\t%s\n",
            m->first_t,
            m->last_t,
            m->usages,
            m->guid
    );

    if(ret >= 0) {
        int ret2 = FUNC1(m->machine_urls, registry_machine_save_url, fp);
        if(ret2 < 0) return ret2;
        ret += ret2;
    }

    // error handling is done at registry_db_save()

    return ret;
}