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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sec_malloc_lock ; 
 int /*<<< orphan*/  secure_mem_initialized ; 
 int FUNC2 (void const*) ; 

int FUNC3(const void *ptr)
{
#ifdef OPENSSL_SECURE_MEMORY
    int ret;

    if (!secure_mem_initialized)
        return 0;
    CRYPTO_THREAD_write_lock(sec_malloc_lock);
    ret = sh_allocated(ptr);
    CRYPTO_THREAD_unlock(sec_malloc_lock);
    return ret;
#else
    return 0;
#endif /* OPENSSL_SECURE_MEMORY */
}