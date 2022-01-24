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
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBIDS_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
#define  no_argument 129 
 int /*<<< orphan*/  optarg ; 
#define  required_argument 128 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(int argc, char *argv[])
{
	static const struct option opts[] = {
		{ "parsable", no_argument,       NULL, 'p' },
		{ "remote",   required_argument, NULL, 'r' },
		{ "local",    no_argument,       NULL, 'l' },
		{ "device",    no_argument,       NULL, 'd' },
		{ NULL,       0,                 NULL,  0  }
	};

	bool parsable = false;
	int opt;
	int ret = -1;

	if (FUNC7(USBIDS_FILE))
		FUNC0("failed to open %s", USBIDS_FILE);

	for (;;) {
		opt = FUNC1(argc, argv, "pr:ld", opts, NULL);

		if (opt == -1)
			break;

		switch (opt) {
		case 'p':
			parsable = true;
			break;
		case 'r':
			ret = FUNC3(optarg);
			goto out;
		case 'l':
			ret = FUNC2(parsable);
			goto out;
		case 'd':
			ret = FUNC4(parsable);
			goto out;
		default:
			goto err_out;
		}
	}

err_out:
	FUNC5();
out:
	FUNC6();

	return ret;
}