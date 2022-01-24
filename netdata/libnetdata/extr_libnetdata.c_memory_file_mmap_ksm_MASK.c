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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int MADV_DONTFORK ; 
 int MADV_MERGEABLE ; 
 int MADV_SEQUENTIAL ; 
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,size_t,int) ; 
 int FUNC4 (char const*,size_t) ; 
 void* FUNC5 (int /*<<< orphan*/ *,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (int,void*,size_t) ; 

__attribute__((used)) static void *FUNC8(const char *filename, size_t size, int flags) {
    // info("memory_file_mmap_ksm('%s', %zu", filename, size);
    static int log_madvise_2 = 1, log_madvise_3 = 1;

    int fd = -1;
    if(filename) {
        fd = FUNC4(filename, size);
        if(fd == -1) return MAP_FAILED;
    }

    void *mem = FUNC5(NULL, size, PROT_READ | PROT_WRITE, flags | MAP_ANONYMOUS, -1, 0);
    if (mem != MAP_FAILED) {
#ifdef NETDATA_LOG_ALLOCATIONS
        mmap_accounting(size);
#endif
        if(fd != -1) {
            if (FUNC2(fd, 0, SEEK_SET) == 0) {
                if (FUNC7(fd, mem, size) != (ssize_t) size)
                    FUNC1("Cannot read from file '%s'", filename);
            }
            else FUNC1("Cannot seek to beginning of file '%s'.", filename);
        }

        // don't use MADV_SEQUENTIAL|MADV_DONTFORK, they disable MADV_MERGEABLE
        if (FUNC3(mem, size, MADV_SEQUENTIAL | MADV_DONTFORK) != 0 && log_madvise_2) {
            FUNC1("Cannot advise the kernel about the memory usage (MADV_SEQUENTIAL|MADV_DONTFORK) of file '%s'.", filename);
            log_madvise_2--;
        }

        if (FUNC3(mem, size, MADV_MERGEABLE) != 0 && log_madvise_3) {
            FUNC1("Cannot advise the kernel about the memory usage (MADV_MERGEABLE) of file '%s'.", filename);
            log_madvise_3--;
        }
    }

    if(fd != -1)
        FUNC0(fd);

    return mem;
}