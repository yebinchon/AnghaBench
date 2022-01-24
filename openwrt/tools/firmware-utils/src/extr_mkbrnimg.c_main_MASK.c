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

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC4 (char*,int,int) ; 
 char* output_file ; 
 int /*<<< orphan*/  FUNC5 (int*,char***) ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC10(int argc, char **argv)
{
	int outfd;
	int i;

	FUNC5(&argc, &argv);

	if (argc < 1)
		FUNC8("wrong number of arguments");

	if ((outfd = FUNC4(output_file, O_WRONLY|O_CREAT|O_TRUNC, 0644)) == -1)
	{
		FUNC3(stderr, "Error opening '%s' for writing: %s\n", output_file, FUNC6(errno));
		FUNC2(1);
	}

	for (i=0; i<argc; i++) {
		FUNC0(outfd, argv[i], i == 0);
	}
	FUNC9(outfd, signature, FUNC7(signature)+1);
	FUNC1(outfd);

	return 0;
}