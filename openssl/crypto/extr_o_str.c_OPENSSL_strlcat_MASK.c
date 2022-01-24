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
 size_t FUNC0 (char*,char const*,size_t) ; 

size_t FUNC1(char *dst, const char *src, size_t size)
{
    size_t l = 0;
    for (; size > 0 && *dst; size--, dst++)
        l++;
    return l + FUNC0(dst, src, size);
}