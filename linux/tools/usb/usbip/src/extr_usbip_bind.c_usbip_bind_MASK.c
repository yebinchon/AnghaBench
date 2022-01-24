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
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  optarg ; 
#define  required_argument 128 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(int argc, char *argv[])
{
	static const struct option opts[] = {
		{ "busid", required_argument, NULL, 'b' },
		{ NULL,    0,                 NULL,  0  }
	};

	int opt;
	int ret = -1;

	for (;;) {
		opt = FUNC1(argc, argv, "b:", opts, NULL);

		if (opt == -1)
			break;

		switch (opt) {
		case 'b':
			ret = FUNC0(optarg);
			goto out;
		default:
			goto err_out;
		}
	}

err_out:
	FUNC2();
out:
	return ret;
}