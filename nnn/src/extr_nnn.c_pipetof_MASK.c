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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CMD_LEN_MAX ; 
 scalar_t__ FUNC0 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 char* g_buf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(char *cmd, FILE *fout)
{
	FILE *fin = FUNC3(cmd, "r");

	if (fin) {
		while (FUNC0(g_buf, CMD_LEN_MAX - 1, fin))
			FUNC1(fout, "%s", g_buf);
		FUNC2(fin);
	}
}