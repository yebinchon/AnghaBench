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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (void*,void const*) ; 
 int FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(void *p, const void *key,
                            int leaf, void** next)
{
    *next = (char *)p+FUNC3(p)+(leaf?5:3);
    FUNC0("Comparing %s with %s\n", FUNC1((char *)p), FUNC1((const char *)key));
    return FUNC2(p, key);
}