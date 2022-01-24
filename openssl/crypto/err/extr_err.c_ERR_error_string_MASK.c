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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,char*,int) ; 

char *FUNC1(unsigned long e, char *ret)
{
    static char buf[256];

    if (ret == NULL)
        ret = buf;
    FUNC0(e, ret, (int)sizeof(buf));
    return ret;
}