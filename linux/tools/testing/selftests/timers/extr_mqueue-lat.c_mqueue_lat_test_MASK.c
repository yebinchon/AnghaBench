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
struct timespec {int dummy; } ;
struct mq_attr {int mq_msgsize; } ;
typedef  scalar_t__ mqd_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ ETIMEDOUT ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int TARGET_TIMEOUT ; 
 int UNRESONABLE_LATENCY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct mq_attr*) ; 
 scalar_t__ FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,char*,int,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct timespec FUNC6 (struct timespec,int) ; 
 int FUNC7 (struct timespec,struct timespec) ; 

int FUNC8(void)
{

	mqd_t q;
	struct mq_attr attr;
	struct timespec start, end, now, target;
	int i, count, ret;

	q = FUNC3("/foo", O_CREAT | O_RDONLY, 0666, NULL);
	if (q < 0) {
		FUNC5("mq_open");
		return -1;
	}
	FUNC2(q, &attr);


	count = 100;
	FUNC0(CLOCK_MONOTONIC, &start);

	for (i = 0; i < count; i++) {
		char buf[attr.mq_msgsize];

		FUNC0(CLOCK_REALTIME, &now);
		target = now;
		target = FUNC6(now, TARGET_TIMEOUT); /* 100ms */

		ret = FUNC4(q, buf, sizeof(buf), NULL, &target);
		if (ret < 0 && errno != ETIMEDOUT) {
			FUNC5("mq_timedreceive");
			return -1;
		}
	}
	FUNC0(CLOCK_MONOTONIC, &end);

	FUNC1(q);

	if ((FUNC7(start, end)/count) > TARGET_TIMEOUT + UNRESONABLE_LATENCY)
		return -1;

	return 0;
}