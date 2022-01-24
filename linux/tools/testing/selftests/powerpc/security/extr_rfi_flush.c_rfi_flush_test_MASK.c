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
typedef  int /*<<< orphan*/  v ;
struct perf_event_read {unsigned long l1d_misses; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 unsigned long CACHELINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PERF_TYPE_RAW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,scalar_t__,char,int,int,int) ; 
 int FUNC11 (int,struct perf_event_read*,int) ; 
 scalar_t__ FUNC12 (char*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC15 (char*,int) ; 

int FUNC16(void)
{
	char *p;
	int repetitions = 10;
	int fd, passes = 0, iter, rc = 0;
	struct perf_event_read v;
	__u64 l1d_misses_total = 0;
	unsigned long iterations = 100000, zero_size = 24 * 1024;
	unsigned long l1d_misses_expected;
	int rfi_flush_org, rfi_flush;

	FUNC1(FUNC3() != 0);

	if (FUNC12("powerpc/rfi_flush", &rfi_flush_org)) {
		FUNC9("Unable to read powerpc/rfi_flush debugfs file");
		FUNC1(1);
	}

	rfi_flush = rfi_flush_org;

	fd = FUNC7(PERF_TYPE_RAW, /* L1d miss */ 0x400f0, -1);
	FUNC0(fd < 0);

	p = (char *)FUNC4(zero_size, CACHELINE_SIZE);

	FUNC0(FUNC6(fd));

	FUNC13(1);

	iter = repetitions;

	/*
	 * We expect to see l1d miss for each cacheline access when rfi_flush
	 * is set. Allow a small variation on this.
	 */
	l1d_misses_expected = iterations * (zero_size / CACHELINE_SIZE - 2);

again:
	FUNC0(FUNC8(fd));

	FUNC14(p, iterations, zero_size);

	FUNC0(FUNC11(fd, &v, sizeof(v)) != sizeof(v));

	if (rfi_flush && v.l1d_misses >= l1d_misses_expected)
		passes++;
	else if (!rfi_flush && v.l1d_misses < (l1d_misses_expected / 2))
		passes++;

	l1d_misses_total += v.l1d_misses;

	while (--iter)
		goto again;

	if (passes < repetitions) {
		FUNC10("FAIL (L1D misses with rfi_flush=%d: %llu %c %lu) [%d/%d failures]\n",
		       rfi_flush, l1d_misses_total, rfi_flush ? '<' : '>',
		       rfi_flush ? repetitions * l1d_misses_expected :
		       repetitions * l1d_misses_expected / 2,
		       repetitions - passes, repetitions);
		rc = 1;
	} else
		FUNC10("PASS (L1D misses with rfi_flush=%d: %llu %c %lu) [%d/%d pass]\n",
		       rfi_flush, l1d_misses_total, rfi_flush ? '>' : '<',
		       rfi_flush ? repetitions * l1d_misses_expected :
		       repetitions * l1d_misses_expected / 2,
		       passes, repetitions);

	if (rfi_flush == rfi_flush_org) {
		rfi_flush = !rfi_flush_org;
		if (FUNC15("powerpc/rfi_flush", rfi_flush) < 0) {
			FUNC9("error writing to powerpc/rfi_flush debugfs file");
			return 1;
		}
		iter = repetitions;
		l1d_misses_total = 0;
		passes = 0;
		goto again;
	}

	FUNC5(fd);
	FUNC2(fd);

	FUNC13(0);

	if (FUNC15("powerpc/rfi_flush", rfi_flush_org) < 0) {
		FUNC9("unable to restore original value of powerpc/rfi_flush debugfs file");
		return 1;
	}

	return rc;
}