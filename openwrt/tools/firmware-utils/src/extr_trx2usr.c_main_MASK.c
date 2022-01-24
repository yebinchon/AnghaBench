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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

extern	int	FUNC7(int argc, char *argv[])
{
	FILE*	in;
	FILE*	out;
	int	ret;

	if (argc != 3)
	{
		FUNC3(stderr, "Usage: trx2usr <trx input> <usr output>\n");
		FUNC0(2);
	}
	in  = FUNC2(argv[1], "rb");
	if (!in)
	{
		FUNC3(stderr, "Cannot open \"%s\": %s\n", argv[1], FUNC4(errno));
		FUNC0(1);
	}
	out = FUNC2(argv[2], "wb");
	if (!out)
	{
		FUNC3(stderr, "Cannot create \"%s\": %s\n", argv[2], FUNC4(errno));
		FUNC0(1);
	}
	ret = FUNC5(in, out);
	FUNC1(in);
	FUNC1(out);
	if (ret)
	{
		FUNC6(argv[2]);
	}
	return ret;
}