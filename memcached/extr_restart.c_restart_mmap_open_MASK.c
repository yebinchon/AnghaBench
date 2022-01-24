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

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  S_IRWXU ; 
 long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  memory_file ; 
 void* FUNC4 (int /*<<< orphan*/ *,size_t const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* mmap_base ; 
 int /*<<< orphan*/  mmap_fd ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 size_t slabmem_limit ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

bool FUNC9(const size_t limit, const char *file, void **mem_base) {
    bool reuse_mmap = true;

    long pagesize = FUNC0();
    memory_file = FUNC8(file);
    mmap_fd = FUNC5(file, O_RDWR|O_CREAT, S_IRWXU);
    if (FUNC3(mmap_fd, limit) != 0) {
        FUNC6("ftruncate failed");
        FUNC1();
    }
    /* Allocate everything in a big chunk with malloc */
    if (limit % pagesize) {
        // This is a sanity check; shouldn't ever be possible since we
        // increase memory by whole megabytes.
        FUNC2(stderr, "[restart] memory limit not divisible evenly by pagesize (please report bug)\n");
        FUNC1();
    }
    mmap_base = FUNC4(NULL, limit, PROT_READ|PROT_WRITE, MAP_SHARED, mmap_fd, 0);
    if (mmap_base == MAP_FAILED) {
        FUNC6("failed to mmap, aborting");
        FUNC1();
    }
    // Set the limit before calling check_mmap, so we can find the meta page..
    slabmem_limit = limit;
    if (FUNC7(file) != 0) {
        reuse_mmap = false;
    }
    *mem_base = mmap_base;

    return reuse_mmap;
}