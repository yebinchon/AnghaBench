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
 int EXT_COPY_ADD ; 
 int EXT_COPY_ALL ; 
 int EXT_COPY_NONE ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

int FUNC1(int *copy_type, const char *arg)
{
    if (FUNC0(arg, "none") == 0)
        *copy_type = EXT_COPY_NONE;
    else if (FUNC0(arg, "copy") == 0)
        *copy_type = EXT_COPY_ADD;
    else if (FUNC0(arg, "copyall") == 0)
        *copy_type = EXT_COPY_ALL;
    else
        return 0;
    return 1;
}