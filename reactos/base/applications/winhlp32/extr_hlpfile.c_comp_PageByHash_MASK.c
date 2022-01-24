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
typedef  scalar_t__ LONG_PTR ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(void *p, const void *key,
                           int leaf, void** next)
{
    LONG lKey = (LONG_PTR)key;
    LONG lTest = (INT)FUNC0(p, 0);

    *next = (char *)p+(leaf?8:6);
    FUNC1("Comparing '%d' with '%d'\n", lKey, lTest);
    if (lTest < lKey) return -1;
    if (lTest > lKey) return 1;
    return 0;
}