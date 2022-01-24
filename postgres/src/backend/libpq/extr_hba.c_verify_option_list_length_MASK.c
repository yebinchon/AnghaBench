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
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  HbaFileName ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(List *options, const char *optionname, List *masters, const char *mastername, int line_num)
{
	if (FUNC4(options) == 0 ||
		FUNC4(options) == 1 ||
		FUNC4(options) == FUNC4(masters))
		return true;

	FUNC0(LOG,
			(FUNC1(ERRCODE_CONFIG_FILE_ERROR),
			 FUNC3("the number of %s (%d) must be 1 or the same as the number of %s (%d)",
					optionname,
					FUNC4(options),
					mastername,
					FUNC4(masters)
					),
			 FUNC2("line %d of configuration file \"%s\"",
						line_num, HbaFileName)));
	return false;
}