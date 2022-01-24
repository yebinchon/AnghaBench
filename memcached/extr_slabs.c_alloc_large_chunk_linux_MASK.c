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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int verbose; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MADV_HUGEPAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*,size_t const,int /*<<< orphan*/ ) ; 
 int FUNC6 (void**,size_t,size_t const) ; 
 TYPE_1__ settings ; 
 int FUNC7 (char*,char*,size_t*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static void * FUNC9(const size_t limit)
{
    size_t pagesize = 0;
    void *ptr = NULL;
    FILE *fp;
    int ret;

    /* Get the size of huge pages */
    fp = FUNC2("/proc/meminfo", "r");
    if (fp != NULL) {
        char buf[64];

        while ((FUNC1(buf, sizeof(buf), fp)))
            if (!FUNC8(buf, "Hugepagesize:", 13)) {
                ret = FUNC7(buf + 13, "%zu\n", &pagesize);

                /* meminfo huge page size is in KiBs */
                pagesize <<= 10;
            }
        FUNC0(fp);
    }

    if (!pagesize) {
        FUNC3(stderr, "Failed to get supported huge page size\n");
        return NULL;
    }

    if (settings.verbose > 1)
        FUNC3(stderr, "huge page size: %zu\n", pagesize);

    /* This works because glibc simply uses mmap when the alignment is
     * above a certain limit. */
    ret = FUNC6(&ptr, pagesize, limit);
    if (ret != 0) {
        FUNC3(stderr, "Failed to get aligned memory chunk: %d\n", ret);
        return NULL;
    }

    ret = FUNC5(ptr, limit, MADV_HUGEPAGE);
    if (ret < 0) {
        FUNC3(stderr, "Failed to set transparent hugepage hint: %d\n", ret);
        FUNC4(ptr);
        ptr = NULL;
    }

    return ptr;
}