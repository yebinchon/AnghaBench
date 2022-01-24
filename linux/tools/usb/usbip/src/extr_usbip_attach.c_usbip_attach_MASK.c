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
 int FUNC0 (char*,char*) ; 
 int FUNC1 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 char* optarg ; 
#define  required_argument 128 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(int argc, char *argv[])
{
	static const struct option opts[] = {
		{ "remote", required_argument, NULL, 'r' },
		{ "busid",  required_argument, NULL, 'b' },
		{ "device",  required_argument, NULL, 'd' },
		{ NULL, 0,  NULL, 0 }
	};
	char *host = NULL;
	char *busid = NULL;
	int opt;
	int ret = -1;

	for (;;) {
		opt = FUNC1(argc, argv, "d:r:b:", opts, NULL);

		if (opt == -1)
			break;

		switch (opt) {
		case 'r':
			host = optarg;
			break;
		case 'd':
		case 'b':
			busid = optarg;
			break;
		default:
			goto err_out;
		}
	}

	if (!host || !busid)
		goto err_out;

	ret = FUNC0(host, busid);
	goto out;

err_out:
	FUNC2();
out:
	return ret;
}