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
 int /*<<< orphan*/  FUNC0 (char const*,long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  prog ; 

int FUNC2(const char *value, int *result)
{
    long l;

    if (!FUNC0(value, &l))
        return 0;
    *result = (int)l;
    if (*result != l) {
        FUNC1("%s: Value \"%s\" outside integer range\n",
                          prog, value);
        return 0;
    }
    return 1;
}