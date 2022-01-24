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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 long INT_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ batch ; 
 scalar_t__ callfd ; 
 int do_exit ; 
 int do_relax ; 
 int do_sleep ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ kickfd ; 
 int /*<<< orphan*/  longopts ; 
 scalar_t__ max_outstanding ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  optstring ; 
 long param ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,void**) ; 
 int ring_size ; 
 long runcycles ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  start_guest ; 
 int /*<<< orphan*/  start_host ; 
 void* FUNC11 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC12(int argc, char **argv)
{
	int ret;
	pthread_t host, guest;
	void *tret;
	char *host_arg = NULL;
	char *guest_arg = NULL;
	char *endptr;
	long int c;

	kickfd = FUNC2(0, 0);
	FUNC1(kickfd >= 0);
	callfd = FUNC2(0, 0);
	FUNC1(callfd >= 0);

	for (;;) {
		int o = FUNC4(argc, argv, optstring, longopts, NULL);
		switch (o) {
		case -1:
			goto done;
		case '?':
			FUNC5();
			FUNC3(2);
		case 'H':
			host_arg = optarg;
			break;
		case 'G':
			guest_arg = optarg;
			break;
		case 'R':
			ring_size = FUNC11(optarg, &endptr, 0);
			FUNC1(ring_size && !(ring_size & (ring_size - 1)));
			FUNC1(!*endptr);
			break;
		case 'C':
			c = FUNC11(optarg, &endptr, 0);
			FUNC1(!*endptr);
			FUNC1(c > 0 && c < INT_MAX);
			runcycles = c;
			break;
		case 'o':
			c = FUNC11(optarg, &endptr, 0);
			FUNC1(!*endptr);
			FUNC1(c > 0 && c < INT_MAX);
			max_outstanding = c;
			break;
		case 'p':
			c = FUNC11(optarg, &endptr, 0);
			FUNC1(!*endptr);
			FUNC1(c > 0 && c < INT_MAX);
			param = c;
			break;
		case 'b':
			c = FUNC11(optarg, &endptr, 0);
			FUNC1(!*endptr);
			FUNC1(c > 0 && c < INT_MAX);
			batch = c;
			break;
		case 's':
			do_sleep = true;
			break;
		case 'x':
			do_relax = true;
			break;
		case 'e':
			do_exit = true;
			break;
		default:
			FUNC5();
			FUNC3(4);
			break;
		}
	}

	/* does nothing here, used to make sure all smp APIs compile */
	FUNC8();
	FUNC10();
	FUNC9();
done:

	if (batch > max_outstanding)
		batch = max_outstanding;

	if (optind < argc) {
		FUNC5();
		FUNC3(4);
	}
	FUNC0();

	ret = FUNC6(&host, NULL, start_host, host_arg);
	FUNC1(!ret);
	ret = FUNC6(&guest, NULL, start_guest, guest_arg);
	FUNC1(!ret);

	ret = FUNC7(guest, &tret);
	FUNC1(!ret);
	ret = FUNC7(host, &tret);
	FUNC1(!ret);
	return 0;
}