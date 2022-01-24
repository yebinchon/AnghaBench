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
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 void* FUNC1 (void*,size_t) ; 
 scalar_t__ FUNC2 (int) ; 

void *FUNC3(void *ptr, size_t size) {
    void *p = FUNC1(ptr, size);
    if (FUNC2(!p)) FUNC0("Cannot re-allocate memory to %zu bytes.", size);
    return p;
}