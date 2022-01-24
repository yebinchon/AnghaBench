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
typedef  scalar_t__ uint32_t ;
typedef  int uint ;
typedef  void* MP_STATE_PORT ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 int FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (char*,void**,void*,void*,int,size_t,int) ; 

void FUNC4(void *ptr_in) {
    void **ptr = &((void**)ptr_in)[-2];
    #if DEBUG
    uint32_t nb;
    size_t n = count_links(&nb);
    printf("mbed_free(%p, [%p, %p], nbytes=%u, links=%u;%u)\n", ptr, ptr[0], ptr[1], gc_nbytes(ptr), n, (uint)nb);
    #endif
    if (ptr[1] != NULL) {
        ((void**)ptr[1])[0] = ptr[0];
    }
    if (ptr[0] != NULL) {
        ((void**)ptr[0])[1] = ptr[1];
    } else {
        MP_STATE_PORT(mbedtls_memory) = ptr[1];
    }
    FUNC2(ptr);
}