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
struct magic_set {int flags; } ;

/* Variables and functions */
 int MAGIC_CONTINUE ; 
 int FUNC0 (struct magic_set*) ; 

__attribute__((used)) static int
FUNC1(struct magic_set *ms, int *rv)
{
	if ((ms->flags & MAGIC_CONTINUE) == 0)
		return 1;
	if (FUNC0(ms) == -1)
		*rv = -1;
	return 0;
}