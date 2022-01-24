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
 int /*<<< orphan*/  FUNC0 (void*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 

void FUNC2(void *str, size_t num, const char *file, int line)
{
    if (str == NULL)
        return;
    if (num)
        FUNC1(str, num);
    FUNC0(str, file, line);
}