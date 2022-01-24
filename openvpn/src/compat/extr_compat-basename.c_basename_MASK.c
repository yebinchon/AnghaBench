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
 char* FUNC0 (char*,char) ; 

char *
FUNC1(char *filename)
{
    char *p = FUNC0(filename, '/');
    if (!p)
    {
        /* If NULL, check for \ instead ... might be Windows a path */
        p = FUNC0(filename, '\\');
    }
    return p ? p + 1 : (char *) filename;
}