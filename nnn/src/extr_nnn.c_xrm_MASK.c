#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ trash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  F_NORMAL ; 
 TYPE_1__ cfg ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(char *path)
{
	if (cfg.trash)
		FUNC1("trash-put", path, NULL, NULL, F_NORMAL);
	else {
		char rm_opts[] = "-ir";

		rm_opts[1] = FUNC0(FALSE);
		FUNC1("rm", rm_opts, path, NULL, F_NORMAL);
	}
}