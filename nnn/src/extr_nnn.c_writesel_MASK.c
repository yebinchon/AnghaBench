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
struct TYPE_2__ {scalar_t__ pickraw; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__ cfg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 size_t const FUNC2 (char const*,int,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_selpath ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char *buf, const size_t buflen)
{
	if (cfg.pickraw || !g_selpath)
		return;

	FILE *fp = FUNC1(g_selpath, "w");

	if (fp) {
		if (FUNC2(buf, 1, buflen, fp) != buflen)
			FUNC3(NULL);
		FUNC0(fp);
	} else
		FUNC3(NULL);
}