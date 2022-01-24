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
 scalar_t__ errno ; 
 unsigned short FUNC1 (unsigned short) ; 
 unsigned long FUNC2 (char*,char**,int) ; 

__attribute__((used)) static bool
FUNC3(char *port, unsigned short *out)
{
    unsigned long parsed;
    char *end_ptr;

    errno = 0;
    parsed = FUNC2(port, &end_ptr, 10);

    if (FUNC0(errno != 0))
        return false;

    if (FUNC0(*end_ptr != '\0'))
        return false;

    if (FUNC0((unsigned long)(unsigned short)parsed != parsed))
        return false;

    *out = FUNC1((unsigned short)parsed);
    return true;
}