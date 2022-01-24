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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  smart_string ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (char*,int,char*,double) ; 

int
FUNC2(smart_string *str, double value)
{
    char tmp[64];
    int len, retval;

    /* Convert to string */
    len = FUNC1(tmp, sizeof(tmp), "%.16g", value);

    // Append the string
    retval = FUNC0(str, tmp, len);

    /* Return new length */
    return retval;
}