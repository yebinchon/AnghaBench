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
 int /*<<< orphan*/  MS_SYNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_file ; 
 int /*<<< orphan*/  mmap_base ; 
 int /*<<< orphan*/  mmap_fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slabmem_limit ; 
 int /*<<< orphan*/  stderr ; 

void FUNC7(void) {
    FUNC3(mmap_base, slabmem_limit, MS_SYNC);

    if (FUNC6(memory_file) != 0) {
        FUNC1(stderr, "[restart] failed to save metadata");
    }

    if (FUNC4(mmap_base, slabmem_limit) != 0) {
        FUNC5("[restart] failed to munmap shared memory");
    } else if (FUNC0(mmap_fd) != 0) {
        FUNC5("[restart] failed to close shared memory fd");
    }

    FUNC2(memory_file);
}