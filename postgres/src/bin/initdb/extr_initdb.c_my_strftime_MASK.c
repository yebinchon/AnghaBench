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
struct tm {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (char*,size_t,char const*,struct tm const*) ; 

__attribute__((used)) static inline size_t
FUNC1(char *s, size_t max, const char *fmt, const struct tm *tm)
{
	return FUNC0(s, max, fmt, tm);
}