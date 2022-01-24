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
struct TYPE_2__ {char* guid; int first_t; int last_t; int usages; int /*<<< orphan*/  person_urls; } ;
typedef  TYPE_1__ REGISTRY_PERSON ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  D_REGISTRY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,int,int,char*) ; 
 int /*<<< orphan*/  registry_person_save_url ; 

__attribute__((used)) static inline int FUNC3(void *entry, void *file) {
    REGISTRY_PERSON *p = entry;
    FILE *fp = file;

    FUNC1(D_REGISTRY, "Registry: registry_person_save('%s')", p->guid);

    int ret = FUNC2(fp, "P\t%08x\t%08x\t%08x\t%s\n",
            p->first_t,
            p->last_t,
            p->usages,
            p->guid
    );

    if(ret >= 0) {
        //int ret2 = dictionary_get_all(p->person_urls, registry_person_save_url, fp);
        int ret2 = FUNC0(&p->person_urls, registry_person_save_url, fp);
        if (ret2 < 0) return ret2;
        ret += ret2;
    }

    // error handling is done at registry_db_save()

    return ret;
}