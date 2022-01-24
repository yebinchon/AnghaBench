#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;
struct TYPE_3__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  LOG_USER ; 
 TYPE_1__* cmds ; 
 int FUNC0 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
#define  no_argument 129 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ opterr ; 
 size_t optind ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  required_argument 128 
 int FUNC3 (TYPE_1__*,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int usbip_use_debug ; 
 int usbip_use_stderr ; 
 int usbip_use_syslog ; 

int FUNC8(int argc, char *argv[])
{
	static const struct option opts[] = {
		{ "debug",    no_argument,       NULL, 'd' },
		{ "log",      no_argument,       NULL, 'l' },
		{ "tcp-port", required_argument, NULL, 't' },
		{ NULL,       0,                 NULL,  0  }
	};

	char *cmd;
	int opt;
	int i, rc = -1;

	usbip_use_stderr = 1;
	opterr = 0;
	for (;;) {
		opt = FUNC0(argc, argv, "+dlt:", opts, NULL);

		if (opt == -1)
			break;

		switch (opt) {
		case 'd':
			usbip_use_debug = 1;
			break;
		case 'l':
			usbip_use_syslog = 1;
			FUNC1("", LOG_PID, LOG_USER);
			break;
		case 't':
			FUNC6(optarg);
			break;
		case '?':
			FUNC2("usbip: invalid option\n");
			/* Terminate after printing error */
			/* FALLTHRU */
		default:
			FUNC7();
			goto out;
		}
	}

	cmd = argv[optind];
	if (cmd) {
		for (i = 0; cmds[i].name != NULL; i++)
			if (!FUNC4(cmds[i].name, cmd)) {
				argc -= optind;
				argv += optind;
				optind = 0;
				rc = FUNC3(&cmds[i], argc, argv);
				goto out;
			}
	}

	/* invalid command */
	FUNC5(0, NULL);
out:
	return (rc > -1 ? EXIT_SUCCESS : EXIT_FAILURE);
}