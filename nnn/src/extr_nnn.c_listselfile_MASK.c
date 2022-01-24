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
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_LEN_MAX ; 
 int FALSE ; 
 int F_CLI ; 
 int F_CONFIRM ; 
 size_t SH_EXEC ; 
 int TRUE ; 
 int /*<<< orphan*/  g_buf ; 
 char* g_selpath ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (char*,struct stat*) ; 
 int /*<<< orphan*/ * utils ; 

__attribute__((used)) static bool FUNC3(void)
{
	struct stat sb;

	if (FUNC2(g_selpath, &sb) == -1)
		return FALSE;

	/* Nothing selected if file size is 0 */
	if (!sb.st_size)
		return FALSE;

	FUNC0(g_buf, CMD_LEN_MAX, "cat %s | tr \'\\0\' \'\\n\'", g_selpath);
	FUNC1(utils[SH_EXEC], g_buf, NULL, NULL, F_CLI | F_CONFIRM);

	return TRUE;
}