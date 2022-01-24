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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 scalar_t__ DEFAULT_RUNTIME ; 
 int DEFAULT_THREAD_COUNT ; 
 int MAX_THREADS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void* (*) (void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__*) ; 

int FUNC15(int argc, char **argv)
{
	int thread_count, i;
	time_t start, now, runtime;
	char buf[255];
	pthread_t pth[MAX_THREADS];
	int opt;
	void *tret;
	int ret = 0;
	void *(*thread)(void *) = shared_thread;

	thread_count = DEFAULT_THREAD_COUNT;
	runtime = DEFAULT_RUNTIME;

	/* Process arguments */
	while ((opt = FUNC2(argc, argv, "t:n:i")) != -1) {
		switch (opt) {
		case 't':
			runtime = FUNC0(optarg);
			break;
		case 'n':
			thread_count = FUNC0(optarg);
			break;
		case 'i':
			thread = independent_thread;
			FUNC7("using independent threads\n");
			break;
		default:
			FUNC7("Usage: %s [-t <secs>] [-n <numthreads>] [-i]\n", argv[0]);
			FUNC7("	-t: time to run\n");
			FUNC7("	-n: number of threads\n");
			FUNC7("	-i: use independent threads\n");
			return -1;
		}
	}

	if (thread_count > MAX_THREADS)
		thread_count = MAX_THREADS;


	FUNC10(stdout, NULL);

	start = FUNC14(0);
	FUNC13(buf, 255, "%a, %d %b %Y %T %z", FUNC6(&start));
	FUNC7("%s\n", buf);
	FUNC7("Testing consistency with %i threads for %ld seconds: ", thread_count, runtime);
	FUNC1(stdout);

	/* spawn */
	for (i = 0; i < thread_count; i++)
		FUNC8(&pth[i], 0, thread, 0);

	while (FUNC14(&now) < start + runtime) {
		FUNC12(1);
		if (done) {
			ret = 1;
			FUNC13(buf, 255, "%a, %d %b %Y %T %z", FUNC6(&now));
			FUNC7("%s\n", buf);
			goto out;
		}
	}
	FUNC7("[OK]\n");
	done = 1;

out:
	/* wait */
	for (i = 0; i < thread_count; i++)
		FUNC9(pth[i], &tret);

	/* die */
	if (ret)
		FUNC4();
	return FUNC5();
}