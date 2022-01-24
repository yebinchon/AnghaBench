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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct sigaction {int /*<<< orphan*/  sa_sigaction; void* sa_flags; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 void* SA_SIGINFO ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ exit_from_pong ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int le ; 
 int /*<<< orphan*/  ping ; 
 int /*<<< orphan*/  pong ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 scalar_t__ success ; 
 int /*<<< orphan*/  t0_ping ; 
 int /*<<< orphan*/  t1_pong ; 
 int /*<<< orphan*/  trap_signal_handler ; 
 int /*<<< orphan*/  usr1_signal_handler ; 

int FUNC12(void)
{
	uint16_t k = 1;

	int rc;

	pthread_attr_t attr;
	cpu_set_t cpuset;

	struct sigaction trap_sa;

	FUNC2(!FUNC4());

	trap_sa.sa_flags = SA_SIGINFO;
	trap_sa.sa_sigaction = trap_signal_handler;
	FUNC11(SIGTRAP, &trap_sa, NULL);

	struct sigaction usr1_sa;

	usr1_sa.sa_flags = SA_SIGINFO;
	usr1_sa.sa_sigaction = usr1_signal_handler;
	FUNC11(SIGUSR1, &usr1_sa, NULL);

	/* Set only CPU 0 in the mask. Both threads will be bound to cpu 0. */
	FUNC1(&cpuset);
	FUNC0(0, &cpuset);

	/* Init pthread attribute */
	rc = FUNC7(&attr);
	if (rc)
		FUNC5(rc, "pthread_attr_init()");

	/*
	 * Bind thread ping() and pong() both to CPU 0 so they ping-pong and
	 * speed up context switches on ping() thread, speeding up the load_fp
	 * and load_vec overflow.
	 */
	rc = FUNC8(&attr, sizeof(cpu_set_t), &cpuset);
	if (rc)
		FUNC5(rc, "pthread_attr_setaffinity()");

	/* Figure out the machine endianness */
	le = (int) *(uint8_t *)&k;

	FUNC6("%s machine detected. Checking if endianness flips %s",
		le ? "Little-Endian" : "Big-Endian",
		"inadvertently on trap in TM... ");

	rc = FUNC3(0);
	if (rc)
		FUNC5(rc, "fflush()");

	/* Launch ping() */
	rc = FUNC9(&t0_ping, &attr, ping, NULL);
	if (rc)
		FUNC5(rc, "pthread_create()");

	exit_from_pong = 0;

	/* Launch pong() */
	rc = FUNC9(&t1_pong, &attr, pong, NULL);
	if (rc)
		FUNC5(rc, "pthread_create()");

	rc = FUNC10(t0_ping, NULL);
	if (rc)
		FUNC5(rc, "pthread_join()");

	rc = FUNC10(t1_pong, NULL);
	if (rc)
		FUNC5(rc, "pthread_join()");

	if (success) {
		FUNC6("no.\n"); /* no, endianness did not flip inadvertently */
		return EXIT_SUCCESS;
	}

	FUNC6("yes!\n"); /* yes, endianness did flip inadvertently */
	return EXIT_FAILURE;
}