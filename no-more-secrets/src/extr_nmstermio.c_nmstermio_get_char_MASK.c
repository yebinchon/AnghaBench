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
struct timespec {int tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,int /*<<< orphan*/ *) ; 

char FUNC2(void) {
	struct timespec ts;
	int t = 50;
	int c;
	
	ts.tv_sec = t / 1000;
	ts.tv_nsec = (t % 1000) * 1000000;

	while ((c = FUNC0()) == EOF) {
		FUNC1(&ts, NULL);
	}
	
	return (char)c;
}