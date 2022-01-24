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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_ID_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

Oid
FUNC2(const char *rolname)
{
	if (FUNC1(rolname, "public") == 0)
		return ACL_ID_PUBLIC;

	return FUNC0(rolname, false);
}