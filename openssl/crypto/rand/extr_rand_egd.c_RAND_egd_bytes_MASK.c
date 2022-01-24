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
 int FUNC0 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 () ; 

int FUNC2(const char *path, int bytes)
{
    int num;

    num = FUNC0(path, NULL, bytes);
    if (num < 0)
        return -1;
    if (FUNC1() != 1)
        return -1;
    return num;
}