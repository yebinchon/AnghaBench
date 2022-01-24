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
struct magic_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_LIST ; 
 int FUNC0 (struct magic_set*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct magic_set *ms, const char *magicfile)
{
	if (ms == NULL)
		return -1;
	return FUNC0(ms, magicfile, FILE_LIST);
}