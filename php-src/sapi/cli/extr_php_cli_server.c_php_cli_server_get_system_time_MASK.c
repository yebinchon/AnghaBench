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
struct tm {int dummy; } ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tm*) ; 

int FUNC3(char *buf) {
	struct timeval tv;
	struct tm tm;

	FUNC0(&tv, NULL);

	/* TODO: should be checked for NULL tm/return vaue */
	FUNC2(&tv.tv_sec, &tm);
	FUNC1(&tm, buf);
	return 0;
}