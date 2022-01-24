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
struct coro {int dummy; } ;

/* Variables and functions */
 scalar_t__ SSIZE_MAX ; 
 char* FUNC0 (struct coro*,char const*,scalar_t__) ; 

char *FUNC1(struct coro *coro, const char *str)
{
    return FUNC0(coro, str, SSIZE_MAX - 1);
}