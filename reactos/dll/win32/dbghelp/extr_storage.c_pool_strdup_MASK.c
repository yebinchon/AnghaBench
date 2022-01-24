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
struct pool {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct pool*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

char* FUNC3(struct pool* pool, const char* str)
{
    char* ret;
    if ((ret = FUNC0(pool, FUNC2(str) + 1))) FUNC1(ret, str);
    return ret;
}