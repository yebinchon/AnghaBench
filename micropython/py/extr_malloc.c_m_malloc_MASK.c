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
 int /*<<< orphan*/  FUNC0 (char*,size_t,void*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  current_bytes_allocated ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  total_bytes_allocated ; 

void *FUNC5(size_t num_bytes) {
    void *ptr = FUNC4(num_bytes);
    if (ptr == NULL && num_bytes != 0) {
        FUNC3(num_bytes);
    }
#if MICROPY_MEM_STATS
    MP_STATE_MEM(total_bytes_allocated) += num_bytes;
    MP_STATE_MEM(current_bytes_allocated) += num_bytes;
    UPDATE_PEAK();
#endif
    FUNC0("malloc %d : %p\n", num_bytes, ptr);
    return ptr;
}