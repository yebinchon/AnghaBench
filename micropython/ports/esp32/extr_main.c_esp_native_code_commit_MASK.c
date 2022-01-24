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
typedef  void uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MALLOC_CAP_EXEC ; 
 void* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 

void *FUNC3(void *buf, size_t len) {
    len = (len + 3) & ~3;
    uint32_t *p = FUNC0(len, MALLOC_CAP_EXEC);
    if (p == NULL) {
        FUNC1(len);
    }
    FUNC2(p, buf, len);
    return p;
}