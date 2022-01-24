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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(Relation rel, const char *trigname,
						   char fires_when, bool skip_system, LOCKMODE lockmode)
{
	FUNC0(rel, trigname, fires_when, skip_system, lockmode);
}