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
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static char *
FUNC2(char *strp, const char *end, char delim)
{
    char *ptr;

    if (FUNC0(!strp))
        return NULL;

    if (FUNC0(strp > end))
        return NULL;

    ptr = FUNC1(strp, delim);
    if (FUNC0(!ptr))
        return NULL;

    *ptr = '\0';
    return ptr + 1;
}